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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context.class */
public final class Context extends GeneratedMessageV3 implements ContextOrBuilder {
    public static final int APP_FIELD_NUMBER = 1;
    public static final int DEVICE_FIELD_NUMBER = 2;
    public static final int EXT_FIELD_NUMBER = 7;
    public static final int EXT_PROTO_FIELD_NUMBER = 6;
    public static final int REGS_FIELD_NUMBER = 3;
    public static final int RESTRICTIONS_FIELD_NUMBER = 4;
    public static final int USER_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private App app_;
    private Device device_;
    private List<Any> extProto_;
    private Struct ext_;
    private byte memoizedIsInitialized;
    private Regs regs_;
    private Restrictions restrictions_;
    private User user_;
    private static final Context DEFAULT_INSTANCE = new Context();
    private static final Parser<Context> PARSER = new AbstractParser<Context>() { // from class: com.explorestack.protobuf.adcom.Context.1
        @Override // com.explorestack.protobuf.Parser
        public final Context parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Context(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App.class */
    public static final class App extends GeneratedMessageV3 implements AppOrBuilder {
        public static final int BUNDLE_FIELD_NUMBER = 12;
        public static final int CATTAX_FIELD_NUMBER = 9;
        public static final int CAT_FIELD_NUMBER = 6;
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int DOMAIN_FIELD_NUMBER = 5;
        public static final int EXT_FIELD_NUMBER = 18;
        public static final int EXT_PROTO_FIELD_NUMBER = 17;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int KEYWORDS_FIELD_NUMBER = 11;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int PAGECAT_FIELD_NUMBER = 8;
        public static final int PAID_FIELD_NUMBER = 16;
        public static final int PRIVPOLICY_FIELD_NUMBER = 10;
        public static final int PUB_FIELD_NUMBER = 3;
        public static final int SECTCAT_FIELD_NUMBER = 7;
        public static final int STOREID_FIELD_NUMBER = 13;
        public static final int STOREURL_FIELD_NUMBER = 14;
        public static final int VER_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private volatile Object bundle_;
        private LazyStringList cat_;
        private int cattax_;
        private Content content_;
        private volatile Object domain_;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object id_;
        private volatile Object keywords_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private LazyStringList pagecat_;
        private boolean paid_;
        private boolean privpolicy_;
        private Publisher pub_;
        private LazyStringList sectcat_;
        private volatile Object storeid_;
        private volatile Object storeurl_;
        private volatile Object ver_;
        private static final App DEFAULT_INSTANCE = new App();
        private static final Parser<App> PARSER = new AbstractParser<App>() { // from class: com.explorestack.protobuf.adcom.Context.App.1
            @Override // com.explorestack.protobuf.Parser
            public final App parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new App(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AppOrBuilder {
            private int bitField0_;
            private Object bundle_;
            private LazyStringList cat_;
            private int cattax_;
            private SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> contentBuilder_;
            private Content content_;
            private Object domain_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object id_;
            private Object keywords_;
            private Object name_;
            private LazyStringList pagecat_;
            private boolean paid_;
            private boolean privpolicy_;
            private SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> pubBuilder_;
            private Publisher pub_;
            private LazyStringList sectcat_;
            private Object storeid_;
            private Object storeurl_;
            private Object ver_;

            private Builder() {
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                this.cat_ = LazyStringArrayList.EMPTY;
                this.sectcat_ = LazyStringArrayList.EMPTY;
                this.pagecat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                this.cat_ = LazyStringArrayList.EMPTY;
                this.sectcat_ = LazyStringArrayList.EMPTY;
                this.pagecat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureCatIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.cat_ = new LazyStringArrayList(this.cat_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensurePagecatIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.pagecat_ = new LazyStringArrayList(this.pagecat_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureSectcatIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.sectcat_ = new LazyStringArrayList(this.sectcat_);
                    this.bitField0_ |= 2;
                }
            }

            private SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> getContentFieldBuilder() {
                if (this.contentBuilder_ == null) {
                    this.contentBuilder_ = new SingleFieldBuilderV3<>(getContent(), getParentForChildren(), isClean());
                    this.content_ = null;
                }
                return this.contentBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_App_descriptor;
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

            private SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> getPubFieldBuilder() {
                if (this.pubBuilder_ == null) {
                    this.pubBuilder_ = new SingleFieldBuilderV3<>(getPub(), getParentForChildren(), isClean());
                    this.pub_ = null;
                }
                return this.pubBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (App.alwaysUseFieldBuilders) {
                    getExtProtoFieldBuilder();
                }
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

            public final Builder addAllPagecat(Iterable<String> iterable) {
                ensurePagecatIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.pagecat_);
                onChanged();
                return this;
            }

            public final Builder addAllSectcat(Iterable<String> iterable) {
                ensureSectcatIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sectcat_);
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
                App.checkByteStringIsUtf8(byteString);
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

            public final Builder addPagecat(String str) {
                Objects.requireNonNull(str);
                ensurePagecatIsMutable();
                this.pagecat_.add(str);
                onChanged();
                return this;
            }

            public final Builder addPagecatBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                ensurePagecatIsMutable();
                this.pagecat_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            public final Builder addSectcat(String str) {
                Objects.requireNonNull(str);
                ensureSectcatIsMutable();
                this.sectcat_.add(str);
                onChanged();
                return this;
            }

            public final Builder addSectcatBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                ensureSectcatIsMutable();
                this.sectcat_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final App build() {
                App buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final App buildPartial() {
                App app = new App(this);
                app.id_ = this.id_;
                app.name_ = this.name_;
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 == null) {
                    app.pub_ = this.pub_;
                } else {
                    app.pub_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV32 = this.contentBuilder_;
                if (singleFieldBuilderV32 == null) {
                    app.content_ = this.content_;
                } else {
                    app.content_ = singleFieldBuilderV32.build();
                }
                app.domain_ = this.domain_;
                if ((this.bitField0_ & 1) != 0) {
                    this.cat_ = this.cat_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                app.cat_ = this.cat_;
                if ((this.bitField0_ & 2) != 0) {
                    this.sectcat_ = this.sectcat_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                app.sectcat_ = this.sectcat_;
                if ((this.bitField0_ & 4) != 0) {
                    this.pagecat_ = this.pagecat_.getUnmodifiableView();
                    this.bitField0_ &= -5;
                }
                app.pagecat_ = this.pagecat_;
                app.cattax_ = this.cattax_;
                app.privpolicy_ = this.privpolicy_;
                app.keywords_ = this.keywords_;
                app.bundle_ = this.bundle_;
                app.storeid_ = this.storeid_;
                app.storeurl_ = this.storeurl_;
                app.ver_ = this.ver_;
                app.paid_ = this.paid_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV33 = this.extBuilder_;
                if (singleFieldBuilderV33 == null) {
                    app.ext_ = this.ext_;
                } else {
                    app.ext_ = singleFieldBuilderV33.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -9;
                    }
                    app.extProto_ = this.extProto_;
                } else {
                    app.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return app;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.id_ = "";
                this.name_ = "";
                if (this.pubBuilder_ == null) {
                    this.pub_ = null;
                } else {
                    this.pub_ = null;
                    this.pubBuilder_ = null;
                }
                if (this.contentBuilder_ == null) {
                    this.content_ = null;
                } else {
                    this.content_ = null;
                    this.contentBuilder_ = null;
                }
                this.domain_ = "";
                this.cat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.sectcat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                this.pagecat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                this.cattax_ = 0;
                this.privpolicy_ = false;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
                this.paid_ = false;
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

            public final Builder clearBundle() {
                this.bundle_ = App.getDefaultInstance().getBundle();
                onChanged();
                return this;
            }

            public final Builder clearCat() {
                this.cat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearCattax() {
                this.cattax_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearContent() {
                if (this.contentBuilder_ == null) {
                    this.content_ = null;
                    onChanged();
                } else {
                    this.content_ = null;
                    this.contentBuilder_ = null;
                }
                return this;
            }

            public final Builder clearDomain() {
                this.domain_ = App.getDefaultInstance().getDomain();
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
                this.id_ = App.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public final Builder clearKeywords() {
                this.keywords_ = App.getDefaultInstance().getKeywords();
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.name_ = App.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearPagecat() {
                this.pagecat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public final Builder clearPaid() {
                this.paid_ = false;
                onChanged();
                return this;
            }

            public final Builder clearPrivpolicy() {
                this.privpolicy_ = false;
                onChanged();
                return this;
            }

            public final Builder clearPub() {
                if (this.pubBuilder_ == null) {
                    this.pub_ = null;
                    onChanged();
                } else {
                    this.pub_ = null;
                    this.pubBuilder_ = null;
                }
                return this;
            }

            public final Builder clearSectcat() {
                this.sectcat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearStoreid() {
                this.storeid_ = App.getDefaultInstance().getStoreid();
                onChanged();
                return this;
            }

            public final Builder clearStoreurl() {
                this.storeurl_ = App.getDefaultInstance().getStoreurl();
                onChanged();
                return this;
            }

            public final Builder clearVer() {
                this.ver_ = App.getDefaultInstance().getVer();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getBundle() {
                Object obj = this.bundle_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bundle_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getBundleBytes() {
                Object obj = this.bundle_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bundle_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getCat(int i) {
                return (String) this.cat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getCatBytes(int i) {
                return this.cat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ProtocolStringList getCatList() {
                return this.cat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                CategoryTaxonomy categoryTaxonomy = valueOf;
                if (valueOf == null) {
                    categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                }
                return categoryTaxonomy;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final Content getContent() {
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV3 = this.contentBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Content content = this.content_;
                    Content content2 = content;
                    if (content == null) {
                        content2 = Content.getDefaultInstance();
                    }
                    return content2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Content.Builder getContentBuilder() {
                onChanged();
                return getContentFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ContentOrBuilder getContentOrBuilder() {
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV3 = this.contentBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Content content = this.content_;
                Content content2 = content;
                if (content == null) {
                    content2 = Content.getDefaultInstance();
                }
                return content2;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final App getDefaultInstanceForType() {
                return App.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_App_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getDomain() {
                Object obj = this.domain_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.domain_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getDomainBytes() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.domain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getKeywords() {
                Object obj = this.keywords_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.keywords_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getPagecat(int i) {
                return (String) this.pagecat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getPagecatBytes(int i) {
                return this.pagecat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final int getPagecatCount() {
                return this.pagecat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ProtocolStringList getPagecatList() {
                return this.pagecat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final boolean getPaid() {
                return this.paid_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final boolean getPrivpolicy() {
                return this.privpolicy_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final Publisher getPub() {
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Publisher publisher = this.pub_;
                    Publisher publisher2 = publisher;
                    if (publisher == null) {
                        publisher2 = Publisher.getDefaultInstance();
                    }
                    return publisher2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Publisher.Builder getPubBuilder() {
                onChanged();
                return getPubFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final PublisherOrBuilder getPubOrBuilder() {
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Publisher publisher = this.pub_;
                Publisher publisher2 = publisher;
                if (publisher == null) {
                    publisher2 = Publisher.getDefaultInstance();
                }
                return publisher2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getSectcat(int i) {
                return (String) this.sectcat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getSectcatBytes(int i) {
                return this.sectcat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final int getSectcatCount() {
                return this.sectcat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ProtocolStringList getSectcatList() {
                return this.sectcat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getStoreid() {
                Object obj = this.storeid_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.storeid_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getStoreidBytes() {
                Object obj = this.storeid_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.storeid_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getStoreurl() {
                Object obj = this.storeurl_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.storeurl_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getStoreurlBytes() {
                Object obj = this.storeurl_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.storeurl_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final String getVer() {
                Object obj = this.ver_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ver_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final ByteString getVerBytes() {
                Object obj = this.ver_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ver_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final boolean hasContent() {
                return (this.contentBuilder_ == null && this.content_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public final boolean hasPub() {
                return (this.pubBuilder_ == null && this.pub_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32951x78e9d10a.ensureFieldAccessorsInitialized(App.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public final Builder mergeContent(Content content) {
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV3 = this.contentBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Content content2 = this.content_;
                    if (content2 != null) {
                        this.content_ = Content.newBuilder(content2).mergeFrom(content).buildPartial();
                    } else {
                        this.content_ = content;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(content);
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
            public final com.explorestack.protobuf.adcom.Context.App.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.App.access$11200()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$App r0 = (com.explorestack.protobuf.adcom.Context.App) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$App$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L31
                L22:
                    r5 = move-exception
                    r0 = r5
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$App r0 = (com.explorestack.protobuf.adcom.Context.App) r0     // Catch: java.lang.Throwable -> L1c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r5 = move-exception
                L31:
                    r0 = r6
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r6
                    com.explorestack.protobuf.adcom.Context$App$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$App$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof App) {
                    return mergeFrom((App) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(App app) {
                if (app == App.getDefaultInstance()) {
                    return this;
                }
                if (!app.getId().isEmpty()) {
                    this.id_ = app.id_;
                    onChanged();
                }
                if (!app.getName().isEmpty()) {
                    this.name_ = app.name_;
                    onChanged();
                }
                if (app.hasPub()) {
                    mergePub(app.getPub());
                }
                if (app.hasContent()) {
                    mergeContent(app.getContent());
                }
                if (!app.getDomain().isEmpty()) {
                    this.domain_ = app.domain_;
                    onChanged();
                }
                if (!app.cat_.isEmpty()) {
                    if (this.cat_.isEmpty()) {
                        this.cat_ = app.cat_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureCatIsMutable();
                        this.cat_.addAll(app.cat_);
                    }
                    onChanged();
                }
                if (!app.sectcat_.isEmpty()) {
                    if (this.sectcat_.isEmpty()) {
                        this.sectcat_ = app.sectcat_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureSectcatIsMutable();
                        this.sectcat_.addAll(app.sectcat_);
                    }
                    onChanged();
                }
                if (!app.pagecat_.isEmpty()) {
                    if (this.pagecat_.isEmpty()) {
                        this.pagecat_ = app.pagecat_;
                        this.bitField0_ &= -5;
                    } else {
                        ensurePagecatIsMutable();
                        this.pagecat_.addAll(app.pagecat_);
                    }
                    onChanged();
                }
                if (app.cattax_ != 0) {
                    setCattaxValue(app.getCattaxValue());
                }
                if (app.getPrivpolicy()) {
                    setPrivpolicy(app.getPrivpolicy());
                }
                if (!app.getKeywords().isEmpty()) {
                    this.keywords_ = app.keywords_;
                    onChanged();
                }
                if (!app.getBundle().isEmpty()) {
                    this.bundle_ = app.bundle_;
                    onChanged();
                }
                if (!app.getStoreid().isEmpty()) {
                    this.storeid_ = app.storeid_;
                    onChanged();
                }
                if (!app.getStoreurl().isEmpty()) {
                    this.storeurl_ = app.storeurl_;
                    onChanged();
                }
                if (!app.getVer().isEmpty()) {
                    this.ver_ = app.ver_;
                    onChanged();
                }
                if (app.getPaid()) {
                    setPaid(app.getPaid());
                }
                if (app.hasExt()) {
                    mergeExt(app.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!app.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = app.extProto_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(app.extProto_);
                        }
                        onChanged();
                    }
                } else if (!app.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = app.extProto_;
                        this.bitField0_ &= -9;
                        if (App.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(app.extProto_);
                    }
                }
                mergeUnknownFields(app.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergePub(Publisher publisher) {
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Publisher publisher2 = this.pub_;
                    if (publisher2 != null) {
                        this.pub_ = Publisher.newBuilder(publisher2).mergeFrom(publisher).buildPartial();
                    } else {
                        this.pub_ = publisher;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(publisher);
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

            public final Builder setBundle(String str) {
                Objects.requireNonNull(str);
                this.bundle_ = str;
                onChanged();
                return this;
            }

            public final Builder setBundleBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.bundle_ = byteString;
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

            public final Builder setContent(Content.Builder builder) {
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV3 = this.contentBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.content_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setContent(Content content) {
                SingleFieldBuilderV3<Content, Content.Builder, ContentOrBuilder> singleFieldBuilderV3 = this.contentBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(content);
                    this.content_ = content;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(content);
                }
                return this;
            }

            public final Builder setDomain(String str) {
                Objects.requireNonNull(str);
                this.domain_ = str;
                onChanged();
                return this;
            }

            public final Builder setDomainBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.domain_ = byteString;
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
                App.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setKeywords(String str) {
                Objects.requireNonNull(str);
                this.keywords_ = str;
                onChanged();
                return this;
            }

            public final Builder setKeywordsBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.keywords_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                Objects.requireNonNull(str);
                this.name_ = str;
                onChanged();
                return this;
            }

            public final Builder setNameBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setPagecat(int i, String str) {
                Objects.requireNonNull(str);
                ensurePagecatIsMutable();
                this.pagecat_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setPaid(boolean z) {
                this.paid_ = z;
                onChanged();
                return this;
            }

            public final Builder setPrivpolicy(boolean z) {
                this.privpolicy_ = z;
                onChanged();
                return this;
            }

            public final Builder setPub(Publisher.Builder builder) {
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.pub_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setPub(Publisher publisher) {
                SingleFieldBuilderV3<Publisher, Publisher.Builder, PublisherOrBuilder> singleFieldBuilderV3 = this.pubBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(publisher);
                    this.pub_ = publisher;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(publisher);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSectcat(int i, String str) {
                Objects.requireNonNull(str);
                ensureSectcatIsMutable();
                this.sectcat_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setStoreid(String str) {
                Objects.requireNonNull(str);
                this.storeid_ = str;
                onChanged();
                return this;
            }

            public final Builder setStoreidBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.storeid_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setStoreurl(String str) {
                Objects.requireNonNull(str);
                this.storeurl_ = str;
                onChanged();
                return this;
            }

            public final Builder setStoreurlBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.storeurl_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public final Builder setVer(String str) {
                Objects.requireNonNull(str);
                this.ver_ = str;
                onChanged();
                return this;
            }

            public final Builder setVerBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                App.checkByteStringIsUtf8(byteString);
                this.ver_ = byteString;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Content.class */
        public static final class Content extends GeneratedMessageV3 implements ContentOrBuilder {
            public static final int ALBUM_FIELD_NUMBER = 8;
            public static final int ARTIST_FIELD_NUMBER = 6;
            public static final int CATTAX_FIELD_NUMBER = 12;
            public static final int CAT_FIELD_NUMBER = 11;
            public static final int CONTEXT_FIELD_NUMBER = 14;
            public static final int DATA_FIELD_NUMBER = 25;
            public static final int EMBED_FIELD_NUMBER = 23;
            public static final int EPISODE_FIELD_NUMBER = 2;
            public static final int EXT_FIELD_NUMBER = 27;
            public static final int EXT_PROTO_FIELD_NUMBER = 26;
            public static final int GENRE_FIELD_NUMBER = 7;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int ISRC_FIELD_NUMBER = 9;
            public static final int KEYWORDS_FIELD_NUMBER = 18;
            public static final int LANG_FIELD_NUMBER = 22;
            public static final int LEN_FIELD_NUMBER = 21;
            public static final int LIVE_FIELD_NUMBER = 19;
            public static final int MRATING_FIELD_NUMBER = 17;
            public static final int PRODQ_FIELD_NUMBER = 13;
            public static final int PRODUCER_FIELD_NUMBER = 24;
            public static final int RATING_FIELD_NUMBER = 15;
            public static final int SEASON_FIELD_NUMBER = 5;
            public static final int SERIES_FIELD_NUMBER = 4;
            public static final int SRCREL_FIELD_NUMBER = 20;
            public static final int TITLE_FIELD_NUMBER = 3;
            public static final int URATING_FIELD_NUMBER = 16;
            public static final int URL_FIELD_NUMBER = 10;
            private static final long serialVersionUID = 0;
            private volatile Object album_;
            private volatile Object artist_;
            private LazyStringList cat_;
            private int cattax_;
            private int context_;
            private List<Data> data_;
            private boolean embed_;
            private int episode_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object genre_;
            private volatile Object id_;
            private volatile Object isrc_;
            private volatile Object keywords_;
            private volatile Object lang_;
            private int len_;
            private boolean live_;
            private byte memoizedIsInitialized;
            private int mrating_;
            private int prodq_;
            private Producer producer_;
            private volatile Object rating_;
            private volatile Object season_;
            private volatile Object series_;
            private int srcrel_;
            private volatile Object title_;
            private volatile Object urating_;
            private volatile Object url_;
            private static final Content DEFAULT_INSTANCE = new Content();
            private static final Parser<Content> PARSER = new AbstractParser<Content>() { // from class: com.explorestack.protobuf.adcom.Context.App.Content.1
                @Override // com.explorestack.protobuf.Parser
                public final Content parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Content(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Content$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ContentOrBuilder {
                private Object album_;
                private Object artist_;
                private int bitField0_;
                private LazyStringList cat_;
                private int cattax_;
                private int context_;
                private RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> dataBuilder_;
                private List<Data> data_;
                private boolean embed_;
                private int episode_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object genre_;
                private Object id_;
                private Object isrc_;
                private Object keywords_;
                private Object lang_;
                private int len_;
                private boolean live_;
                private int mrating_;
                private int prodq_;
                private SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> producerBuilder_;
                private Producer producer_;
                private Object rating_;
                private Object season_;
                private Object series_;
                private int srcrel_;
                private Object title_;
                private Object urating_;
                private Object url_;

                private Builder() {
                    this.id_ = "";
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.lang_ = "";
                    this.data_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.lang_ = "";
                    this.data_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureCatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.cat_ = new LazyStringArrayList(this.cat_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureDataIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.data_ = new ArrayList(this.data_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 4;
                    }
                }

                private RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> getDataFieldBuilder() {
                    if (this.dataBuilder_ == null) {
                        this.dataBuilder_ = new RepeatedFieldBuilderV3<>(this.data_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                        this.data_ = null;
                    }
                    return this.dataBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.f32947xae6b1132;
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

                private SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> getProducerFieldBuilder() {
                    if (this.producerBuilder_ == null) {
                        this.producerBuilder_ = new SingleFieldBuilderV3<>(getProducer(), getParentForChildren(), isClean());
                        this.producer_ = null;
                    }
                    return this.producerBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (Content.alwaysUseFieldBuilders) {
                        getDataFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllCat(Iterable<String> iterable) {
                    ensureCatIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.cat_);
                    onChanged();
                    return this;
                }

                public final Builder addAllData(Iterable<? extends Data> iterable) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureDataIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.data_);
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

                public final Builder addCat(String str) {
                    Objects.requireNonNull(str);
                    ensureCatIsMutable();
                    this.cat_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addCatBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    ensureCatIsMutable();
                    this.cat_.add(byteString);
                    onChanged();
                    return this;
                }

                public final Builder addData(int i, Data.Builder builder) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureDataIsMutable();
                        this.data_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder addData(int i, Data data) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(data);
                        ensureDataIsMutable();
                        this.data_.add(i, data);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, data);
                    }
                    return this;
                }

                public final Builder addData(Data.Builder builder) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureDataIsMutable();
                        this.data_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public final Builder addData(Data data) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(data);
                        ensureDataIsMutable();
                        this.data_.add(data);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(data);
                    }
                    return this;
                }

                public final Data.Builder addDataBuilder() {
                    return getDataFieldBuilder().addBuilder(Data.getDefaultInstance());
                }

                public final Data.Builder addDataBuilder(int i) {
                    return getDataFieldBuilder().addBuilder(i, Data.getDefaultInstance());
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
                public final Content build() {
                    Content buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Content buildPartial() {
                    Content content = new Content(this);
                    content.id_ = this.id_;
                    content.episode_ = this.episode_;
                    content.title_ = this.title_;
                    content.series_ = this.series_;
                    content.season_ = this.season_;
                    content.artist_ = this.artist_;
                    content.genre_ = this.genre_;
                    content.album_ = this.album_;
                    content.isrc_ = this.isrc_;
                    content.url_ = this.url_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    content.cat_ = this.cat_;
                    content.cattax_ = this.cattax_;
                    content.prodq_ = this.prodq_;
                    content.context_ = this.context_;
                    content.rating_ = this.rating_;
                    content.urating_ = this.urating_;
                    content.mrating_ = this.mrating_;
                    content.keywords_ = this.keywords_;
                    content.live_ = this.live_;
                    content.srcrel_ = this.srcrel_;
                    content.len_ = this.len_;
                    content.lang_ = this.lang_;
                    content.embed_ = this.embed_;
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        content.producer_ = this.producer_;
                    } else {
                        content.producer_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.data_ = Collections.unmodifiableList(this.data_);
                            this.bitField0_ &= -3;
                        }
                        content.data_ = this.data_;
                    } else {
                        content.data_ = repeatedFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        content.ext_ = this.ext_;
                    } else {
                        content.ext_ = singleFieldBuilderV32.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        if ((this.bitField0_ & 4) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -5;
                        }
                        content.extProto_ = this.extProto_;
                    } else {
                        content.extProto_ = repeatedFieldBuilderV32.build();
                    }
                    onBuilt();
                    return content;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.episode_ = 0;
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.live_ = false;
                    this.srcrel_ = 0;
                    this.len_ = 0;
                    this.lang_ = "";
                    this.embed_ = false;
                    if (this.producerBuilder_ == null) {
                        this.producer_ = null;
                    } else {
                        this.producer_ = null;
                        this.producerBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.data_ = Collections.emptyList();
                        this.bitField0_ &= -3;
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
                        this.bitField0_ &= -5;
                    } else {
                        repeatedFieldBuilderV32.clear();
                    }
                    return this;
                }

                public final Builder clearAlbum() {
                    this.album_ = Content.getDefaultInstance().getAlbum();
                    onChanged();
                    return this;
                }

                public final Builder clearArtist() {
                    this.artist_ = Content.getDefaultInstance().getArtist();
                    onChanged();
                    return this;
                }

                public final Builder clearCat() {
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public final Builder clearCattax() {
                    this.cattax_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearContext() {
                    this.context_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearData() {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.data_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                public final Builder clearEmbed() {
                    this.embed_ = false;
                    onChanged();
                    return this;
                }

                public final Builder clearEpisode() {
                    this.episode_ = 0;
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

                public final Builder clearGenre() {
                    this.genre_ = Content.getDefaultInstance().getGenre();
                    onChanged();
                    return this;
                }

                public final Builder clearId() {
                    this.id_ = Content.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public final Builder clearIsrc() {
                    this.isrc_ = Content.getDefaultInstance().getIsrc();
                    onChanged();
                    return this;
                }

                public final Builder clearKeywords() {
                    this.keywords_ = Content.getDefaultInstance().getKeywords();
                    onChanged();
                    return this;
                }

                public final Builder clearLang() {
                    this.lang_ = Content.getDefaultInstance().getLang();
                    onChanged();
                    return this;
                }

                public final Builder clearLen() {
                    this.len_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearLive() {
                    this.live_ = false;
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

                public final Builder clearProdq() {
                    this.prodq_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearProducer() {
                    if (this.producerBuilder_ == null) {
                        this.producer_ = null;
                        onChanged();
                    } else {
                        this.producer_ = null;
                        this.producerBuilder_ = null;
                    }
                    return this;
                }

                public final Builder clearRating() {
                    this.rating_ = Content.getDefaultInstance().getRating();
                    onChanged();
                    return this;
                }

                public final Builder clearSeason() {
                    this.season_ = Content.getDefaultInstance().getSeason();
                    onChanged();
                    return this;
                }

                public final Builder clearSeries() {
                    this.series_ = Content.getDefaultInstance().getSeries();
                    onChanged();
                    return this;
                }

                public final Builder clearSrcrel() {
                    this.srcrel_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearTitle() {
                    this.title_ = Content.getDefaultInstance().getTitle();
                    onChanged();
                    return this;
                }

                public final Builder clearUrating() {
                    this.urating_ = Content.getDefaultInstance().getUrating();
                    onChanged();
                    return this;
                }

                public final Builder clearUrl() {
                    this.url_ = Content.getDefaultInstance().getUrl();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getAlbum() {
                    Object obj = this.album_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.album_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getAlbumBytes() {
                    Object obj = this.album_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.album_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getArtist() {
                    Object obj = this.artist_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.artist_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getArtistBytes() {
                    Object obj = this.artist_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.artist_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getCat(int i) {
                    return (String) this.cat_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getCatBytes(int i) {
                    return this.cat_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ProtocolStringList getCatList() {
                    return this.cat_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    CategoryTaxonomy categoryTaxonomy = valueOf;
                    if (valueOf == null) {
                        categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return categoryTaxonomy;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ContentContext getContext() {
                    ContentContext valueOf = ContentContext.valueOf(this.context_);
                    ContentContext contentContext = valueOf;
                    if (valueOf == null) {
                        contentContext = ContentContext.UNRECOGNIZED;
                    }
                    return contentContext;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getContextValue() {
                    return this.context_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final Data getData(int i) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.data_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                }

                public final Data.Builder getDataBuilder(int i) {
                    return getDataFieldBuilder().getBuilder(i);
                }

                public final List<Data.Builder> getDataBuilderList() {
                    return getDataFieldBuilder().getBuilderList();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getDataCount() {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final List<Data> getDataList() {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final DataOrBuilder getDataOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.data_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final List<? extends DataOrBuilder> getDataOrBuilderList() {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Content getDefaultInstanceForType() {
                    return Content.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.f32947xae6b1132;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final boolean getEmbed() {
                    return this.embed_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getEpisode() {
                    return this.episode_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final Struct getExt() {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }
                    return singleFieldBuilderV3.getMessage();
                }

                public final Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getGenre() {
                    Object obj = this.genre_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.genre_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getGenreBytes() {
                    Object obj = this.genre_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.genre_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getIsrc() {
                    Object obj = this.isrc_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.isrc_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getIsrcBytes() {
                    Object obj = this.isrc_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.isrc_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getKeywords() {
                    Object obj = this.keywords_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.keywords_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getKeywordsBytes() {
                    Object obj = this.keywords_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.keywords_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getLang() {
                    Object obj = this.lang_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.lang_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getLangBytes() {
                    Object obj = this.lang_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.lang_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getLen() {
                    return this.len_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final boolean getLive() {
                    return this.live_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final MediaRating getMrating() {
                    MediaRating valueOf = MediaRating.valueOf(this.mrating_);
                    MediaRating mediaRating = valueOf;
                    if (valueOf == null) {
                        mediaRating = MediaRating.UNRECOGNIZED;
                    }
                    return mediaRating;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getMratingValue() {
                    return this.mrating_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ProductionQuality getProdq() {
                    ProductionQuality valueOf = ProductionQuality.valueOf(this.prodq_);
                    ProductionQuality productionQuality = valueOf;
                    if (valueOf == null) {
                        productionQuality = ProductionQuality.UNRECOGNIZED;
                    }
                    return productionQuality;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getProdqValue() {
                    return this.prodq_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final Producer getProducer() {
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Producer producer = this.producer_;
                        Producer producer2 = producer;
                        if (producer == null) {
                            producer2 = Producer.getDefaultInstance();
                        }
                        return producer2;
                    }
                    return singleFieldBuilderV3.getMessage();
                }

                public final Producer.Builder getProducerBuilder() {
                    onChanged();
                    return getProducerFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ProducerOrBuilder getProducerOrBuilder() {
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    Producer producer = this.producer_;
                    Producer producer2 = producer;
                    if (producer == null) {
                        producer2 = Producer.getDefaultInstance();
                    }
                    return producer2;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getRating() {
                    Object obj = this.rating_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.rating_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getRatingBytes() {
                    Object obj = this.rating_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.rating_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getSeason() {
                    Object obj = this.season_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.season_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getSeasonBytes() {
                    Object obj = this.season_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.season_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getSeries() {
                    Object obj = this.series_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.series_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getSeriesBytes() {
                    Object obj = this.series_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.series_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final int getSrcrel() {
                    return this.srcrel_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getTitle() {
                    Object obj = this.title_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.title_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getTitleBytes() {
                    Object obj = this.title_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.title_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getUrating() {
                    Object obj = this.urating_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.urating_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getUratingBytes() {
                    Object obj = this.urating_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.urating_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final String getUrl() {
                    Object obj = this.url_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.url_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final ByteString getUrlBytes() {
                    Object obj = this.url_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.url_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public final boolean hasProducer() {
                    return (this.producerBuilder_ == null && this.producer_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.f32948xb796e5b0.ensureFieldAccessorsInitialized(Content.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Context.App.Content.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.App.Content.access$7200()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        com.explorestack.protobuf.adcom.Context$App$Content r0 = (com.explorestack.protobuf.adcom.Context.App.Content) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L1a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Context$App$Content$Builder r0 = r0.mergeFrom(r1)
                    L1a:
                        r0 = r4
                        return r0
                    L1c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L31
                    L22:
                        r5 = move-exception
                        r0 = r5
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                        com.explorestack.protobuf.adcom.Context$App$Content r0 = (com.explorestack.protobuf.adcom.Context.App.Content) r0     // Catch: java.lang.Throwable -> L1c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                        throw r0     // Catch: java.lang.Throwable -> L30
                    L30:
                        r5 = move-exception
                    L31:
                        r0 = r6
                        if (r0 == 0) goto L3b
                        r0 = r4
                        r1 = r6
                        com.explorestack.protobuf.adcom.Context$App$Content$Builder r0 = r0.mergeFrom(r1)
                    L3b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Content.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$App$Content$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Content) {
                        return mergeFrom((Content) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Content content) {
                    if (content == Content.getDefaultInstance()) {
                        return this;
                    }
                    if (!content.getId().isEmpty()) {
                        this.id_ = content.id_;
                        onChanged();
                    }
                    if (content.getEpisode() != 0) {
                        setEpisode(content.getEpisode());
                    }
                    if (!content.getTitle().isEmpty()) {
                        this.title_ = content.title_;
                        onChanged();
                    }
                    if (!content.getSeries().isEmpty()) {
                        this.series_ = content.series_;
                        onChanged();
                    }
                    if (!content.getSeason().isEmpty()) {
                        this.season_ = content.season_;
                        onChanged();
                    }
                    if (!content.getArtist().isEmpty()) {
                        this.artist_ = content.artist_;
                        onChanged();
                    }
                    if (!content.getGenre().isEmpty()) {
                        this.genre_ = content.genre_;
                        onChanged();
                    }
                    if (!content.getAlbum().isEmpty()) {
                        this.album_ = content.album_;
                        onChanged();
                    }
                    if (!content.getIsrc().isEmpty()) {
                        this.isrc_ = content.isrc_;
                        onChanged();
                    }
                    if (!content.getUrl().isEmpty()) {
                        this.url_ = content.url_;
                        onChanged();
                    }
                    if (!content.cat_.isEmpty()) {
                        if (this.cat_.isEmpty()) {
                            this.cat_ = content.cat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureCatIsMutable();
                            this.cat_.addAll(content.cat_);
                        }
                        onChanged();
                    }
                    if (content.cattax_ != 0) {
                        setCattaxValue(content.getCattaxValue());
                    }
                    if (content.prodq_ != 0) {
                        setProdqValue(content.getProdqValue());
                    }
                    if (content.context_ != 0) {
                        setContextValue(content.getContextValue());
                    }
                    if (!content.getRating().isEmpty()) {
                        this.rating_ = content.rating_;
                        onChanged();
                    }
                    if (!content.getUrating().isEmpty()) {
                        this.urating_ = content.urating_;
                        onChanged();
                    }
                    if (content.mrating_ != 0) {
                        setMratingValue(content.getMratingValue());
                    }
                    if (!content.getKeywords().isEmpty()) {
                        this.keywords_ = content.keywords_;
                        onChanged();
                    }
                    if (content.getLive()) {
                        setLive(content.getLive());
                    }
                    if (content.getSrcrel() != 0) {
                        setSrcrel(content.getSrcrel());
                    }
                    if (content.getLen() != 0) {
                        setLen(content.getLen());
                    }
                    if (!content.getLang().isEmpty()) {
                        this.lang_ = content.lang_;
                        onChanged();
                    }
                    if (content.getEmbed()) {
                        setEmbed(content.getEmbed());
                    }
                    if (content.hasProducer()) {
                        mergeProducer(content.getProducer());
                    }
                    if (this.dataBuilder_ == null) {
                        if (!content.data_.isEmpty()) {
                            if (this.data_.isEmpty()) {
                                this.data_ = content.data_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureDataIsMutable();
                                this.data_.addAll(content.data_);
                            }
                            onChanged();
                        }
                    } else if (!content.data_.isEmpty()) {
                        if (this.dataBuilder_.isEmpty()) {
                            this.dataBuilder_.dispose();
                            this.dataBuilder_ = null;
                            this.data_ = content.data_;
                            this.bitField0_ &= -3;
                            this.dataBuilder_ = Content.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                        } else {
                            this.dataBuilder_.addAllMessages(content.data_);
                        }
                    }
                    if (content.hasExt()) {
                        mergeExt(content.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!content.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = content.extProto_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(content.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!content.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = content.extProto_;
                            this.bitField0_ &= -5;
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            if (Content.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(content.extProto_);
                        }
                    }
                    mergeUnknownFields(content.unknownFields);
                    onChanged();
                    return this;
                }

                public final Builder mergeProducer(Producer producer) {
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Producer producer2 = this.producer_;
                        if (producer2 != null) {
                            this.producer_ = Producer.newBuilder(producer2).mergeFrom(producer).buildPartial();
                        } else {
                            this.producer_ = producer;
                        }
                        onChanged();
                    } else {
                        singleFieldBuilderV3.mergeFrom(producer);
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                public final Builder removeData(int i) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureDataIsMutable();
                        this.data_.remove(i);
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

                public final Builder setAlbum(String str) {
                    Objects.requireNonNull(str);
                    this.album_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setAlbumBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.album_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setArtist(String str) {
                    Objects.requireNonNull(str);
                    this.artist_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setArtistBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.artist_ = byteString;
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

                public final Builder setContext(ContentContext contentContext) {
                    Objects.requireNonNull(contentContext);
                    this.context_ = contentContext.getNumber();
                    onChanged();
                    return this;
                }

                public final Builder setContextValue(int i) {
                    this.context_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setData(int i, Data.Builder builder) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureDataIsMutable();
                        this.data_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder setData(int i, Data data) {
                    RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(data);
                        ensureDataIsMutable();
                        this.data_.set(i, data);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, data);
                    }
                    return this;
                }

                public final Builder setEmbed(boolean z) {
                    this.embed_ = z;
                    onChanged();
                    return this;
                }

                public final Builder setEpisode(int i) {
                    this.episode_ = i;
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

                public final Builder setGenre(String str) {
                    Objects.requireNonNull(str);
                    this.genre_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setGenreBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.genre_ = byteString;
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
                    Content.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setIsrc(String str) {
                    Objects.requireNonNull(str);
                    this.isrc_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setIsrcBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.isrc_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setKeywords(String str) {
                    Objects.requireNonNull(str);
                    this.keywords_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setKeywordsBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.keywords_ = byteString;
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
                    Content.checkByteStringIsUtf8(byteString);
                    this.lang_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setLen(int i) {
                    this.len_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setLive(boolean z) {
                    this.live_ = z;
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

                public final Builder setProdq(ProductionQuality productionQuality) {
                    Objects.requireNonNull(productionQuality);
                    this.prodq_ = productionQuality.getNumber();
                    onChanged();
                    return this;
                }

                public final Builder setProdqValue(int i) {
                    this.prodq_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setProducer(Producer.Builder builder) {
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.producer_ = builder.build();
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(builder.build());
                    }
                    return this;
                }

                public final Builder setProducer(Producer producer) {
                    SingleFieldBuilderV3<Producer, Producer.Builder, ProducerOrBuilder> singleFieldBuilderV3 = this.producerBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Objects.requireNonNull(producer);
                        this.producer_ = producer;
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(producer);
                    }
                    return this;
                }

                public final Builder setRating(String str) {
                    Objects.requireNonNull(str);
                    this.rating_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setRatingBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.rating_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                }

                public final Builder setSeason(String str) {
                    Objects.requireNonNull(str);
                    this.season_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setSeasonBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.season_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setSeries(String str) {
                    Objects.requireNonNull(str);
                    this.series_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setSeriesBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.series_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setSrcrel(int i) {
                    this.srcrel_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setTitle(String str) {
                    Objects.requireNonNull(str);
                    this.title_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setTitleBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.title_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }

                public final Builder setUrating(String str) {
                    Objects.requireNonNull(str);
                    this.urating_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setUratingBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.urating_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setUrl(String str) {
                    Objects.requireNonNull(str);
                    this.url_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setUrlBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Content.checkByteStringIsUtf8(byteString);
                    this.url_ = byteString;
                    onChanged();
                    return this;
                }
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Content$Producer.class */
            public static final class Producer extends GeneratedMessageV3 implements ProducerOrBuilder {
                public static final int CATTAX_FIELD_NUMBER = 5;
                public static final int CAT_FIELD_NUMBER = 4;
                public static final int DOMAIN_FIELD_NUMBER = 3;
                public static final int EXT_FIELD_NUMBER = 7;
                public static final int EXT_PROTO_FIELD_NUMBER = 6;
                public static final int ID_FIELD_NUMBER = 1;
                public static final int NAME_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private LazyStringList cat_;
                private int cattax_;
                private volatile Object domain_;
                private List<Any> extProto_;
                private Struct ext_;
                private volatile Object id_;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private static final Producer DEFAULT_INSTANCE = new Producer();
                private static final Parser<Producer> PARSER = new AbstractParser<Producer>() { // from class: com.explorestack.protobuf.adcom.Context.App.Content.Producer.1
                    @Override // com.explorestack.protobuf.Parser
                    public final Producer parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return new Producer(codedInputStream, extensionRegistryLite);
                    }
                };

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder.class */
                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ProducerOrBuilder {
                    private int bitField0_;
                    private LazyStringList cat_;
                    private int cattax_;
                    private Object domain_;
                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private Object id_;
                    private Object name_;

                    private Builder() {
                        this.id_ = "";
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = LazyStringArrayList.EMPTY;
                        this.cattax_ = 0;
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                        super(builderParent);
                        this.id_ = "";
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = LazyStringArrayList.EMPTY;
                        this.cattax_ = 0;
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private void ensureCatIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.cat_ = new LazyStringArrayList(this.cat_);
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
                        return AdcomProto.f32945xa9939fb9;
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
                        if (Producer.alwaysUseFieldBuilders) {
                            getExtProtoFieldBuilder();
                        }
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

                    public final Builder addCat(String str) {
                        Objects.requireNonNull(str);
                        ensureCatIsMutable();
                        this.cat_.add(str);
                        onChanged();
                        return this;
                    }

                    public final Builder addCatBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        Producer.checkByteStringIsUtf8(byteString);
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
                    public final Producer build() {
                        Producer buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Producer buildPartial() {
                        Producer producer = new Producer(this);
                        producer.id_ = this.id_;
                        producer.name_ = this.name_;
                        producer.domain_ = this.domain_;
                        if ((this.bitField0_ & 1) != 0) {
                            this.cat_ = this.cat_.getUnmodifiableView();
                            this.bitField0_ &= -2;
                        }
                        producer.cat_ = this.cat_;
                        producer.cattax_ = this.cattax_;
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            producer.ext_ = this.ext_;
                        } else {
                            producer.ext_ = singleFieldBuilderV3.build();
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            if ((this.bitField0_ & 2) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -3;
                            }
                            producer.extProto_ = this.extProto_;
                        } else {
                            producer.extProto_ = repeatedFieldBuilderV3.build();
                        }
                        onBuilt();
                        return producer;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clear() {
                        super.clear();
                        this.id_ = "";
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = LazyStringArrayList.EMPTY;
                        this.bitField0_ &= -2;
                        this.cattax_ = 0;
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

                    public final Builder clearCat() {
                        this.cat_ = LazyStringArrayList.EMPTY;
                        this.bitField0_ &= -2;
                        onChanged();
                        return this;
                    }

                    public final Builder clearCattax() {
                        this.cattax_ = 0;
                        onChanged();
                        return this;
                    }

                    public final Builder clearDomain() {
                        this.domain_ = Producer.getDefaultInstance().getDomain();
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
                        this.id_ = Producer.getDefaultInstance().getId();
                        onChanged();
                        return this;
                    }

                    public final Builder clearName() {
                        this.name_ = Producer.getDefaultInstance().getName();
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final String getCat(int i) {
                        return (String) this.cat_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final ByteString getCatBytes(int i) {
                        return this.cat_.getByteString(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final int getCatCount() {
                        return this.cat_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final ProtocolStringList getCatList() {
                        return this.cat_.getUnmodifiableView();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final CategoryTaxonomy getCattax() {
                        CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                        CategoryTaxonomy categoryTaxonomy = valueOf;
                        if (valueOf == null) {
                            categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                        }
                        return categoryTaxonomy;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final int getCattaxValue() {
                        return this.cattax_;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final Producer getDefaultInstanceForType() {
                        return Producer.getDefaultInstance();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final Descriptors.Descriptor getDescriptorForType() {
                        return AdcomProto.f32945xa9939fb9;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final String getDomain() {
                        Object obj = this.domain_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.domain_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final ByteString getDomainBytes() {
                        Object obj = this.domain_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.domain_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final Struct getExt() {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Struct struct = this.ext_;
                            Struct struct2 = struct;
                            if (struct == null) {
                                struct2 = Struct.getDefaultInstance();
                            }
                            return struct2;
                        }
                        return singleFieldBuilderV3.getMessage();
                    }

                    public final Struct.Builder getExtBuilder() {
                        onChanged();
                        return getExtFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final int getExtProtoCount() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final List<Any> getExtProtoList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final String getId() {
                        Object obj = this.id_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.id_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final ByteString getIdBytes() {
                        Object obj = this.id_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.id_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final String getName() {
                        Object obj = this.name_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.name_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final ByteString getNameBytes() {
                        Object obj = this.name_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.name_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public final boolean hasExt() {
                        return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.f32946x3067fd37.ensureFieldAccessorsInitialized(Producer.class, Builder.class);
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
                    public final com.explorestack.protobuf.adcom.Context.App.Content.Producer.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.App.Content.Producer.access$3200()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer r0 = (com.explorestack.protobuf.adcom.Context.App.Content.Producer) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L1a
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer$Builder r0 = r0.mergeFrom(r1)
                        L1a:
                            r0 = r4
                            return r0
                        L1c:
                            r5 = move-exception
                            r0 = r7
                            r6 = r0
                            goto L31
                        L22:
                            r5 = move-exception
                            r0 = r5
                            com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer r0 = (com.explorestack.protobuf.adcom.Context.App.Content.Producer) r0     // Catch: java.lang.Throwable -> L1c
                            r6 = r0
                            r0 = r5
                            java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                            throw r0     // Catch: java.lang.Throwable -> L30
                        L30:
                            r5 = move-exception
                        L31:
                            r0 = r6
                            if (r0 == 0) goto L3b
                            r0 = r4
                            r1 = r6
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer$Builder r0 = r0.mergeFrom(r1)
                        L3b:
                            r0 = r5
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Content.Producer.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$App$Content$Producer$Builder");
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeFrom(Message message) {
                        if (message instanceof Producer) {
                            return mergeFrom((Producer) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public final Builder mergeFrom(Producer producer) {
                        if (producer == Producer.getDefaultInstance()) {
                            return this;
                        }
                        if (!producer.getId().isEmpty()) {
                            this.id_ = producer.id_;
                            onChanged();
                        }
                        if (!producer.getName().isEmpty()) {
                            this.name_ = producer.name_;
                            onChanged();
                        }
                        if (!producer.getDomain().isEmpty()) {
                            this.domain_ = producer.domain_;
                            onChanged();
                        }
                        if (!producer.cat_.isEmpty()) {
                            if (this.cat_.isEmpty()) {
                                this.cat_ = producer.cat_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureCatIsMutable();
                                this.cat_.addAll(producer.cat_);
                            }
                            onChanged();
                        }
                        if (producer.cattax_ != 0) {
                            setCattaxValue(producer.getCattaxValue());
                        }
                        if (producer.hasExt()) {
                            mergeExt(producer.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!producer.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = producer.extProto_;
                                    this.bitField0_ &= -3;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(producer.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!producer.extProto_.isEmpty()) {
                            if (this.extProtoBuilder_.isEmpty()) {
                                this.extProtoBuilder_.dispose();
                                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                this.extProtoBuilder_ = null;
                                this.extProto_ = producer.extProto_;
                                this.bitField0_ &= -3;
                                if (Producer.alwaysUseFieldBuilders) {
                                    repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                }
                                this.extProtoBuilder_ = repeatedFieldBuilderV3;
                            } else {
                                this.extProtoBuilder_.addAllMessages(producer.extProto_);
                            }
                        }
                        mergeUnknownFields(producer.unknownFields);
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

                    public final Builder setDomain(String str) {
                        Objects.requireNonNull(str);
                        this.domain_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setDomainBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        Producer.checkByteStringIsUtf8(byteString);
                        this.domain_ = byteString;
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
                        Producer.checkByteStringIsUtf8(byteString);
                        this.id_ = byteString;
                        onChanged();
                        return this;
                    }

                    public final Builder setName(String str) {
                        Objects.requireNonNull(str);
                        this.name_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setNameBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        Producer.checkByteStringIsUtf8(byteString);
                        this.name_ = byteString;
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

                private Producer() {
                    this.memoizedIsInitialized = (byte) (-1);
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.cattax_ = 0;
                    this.extProto_ = Collections.emptyList();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private Producer(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    this();
                    Objects.requireNonNull(extensionRegistryLite);
                    UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                    boolean z = false;
                    boolean z2 = false;
                    while (!z) {
                        boolean z3 = z2;
                        try {
                            try {
                                int readTag = codedInputStream.readTag();
                                if (readTag != 0) {
                                    if (readTag == 10) {
                                        this.id_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 18) {
                                        this.name_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 26) {
                                        this.domain_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 34) {
                                        String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                        boolean z4 = z2;
                                        if (!(z2 & true)) {
                                            boolean z5 = z2;
                                            boolean z6 = z2;
                                            this.cat_ = new LazyStringArrayList();
                                            z4 = z2 | true;
                                        }
                                        this.cat_.add(readStringRequireUtf8);
                                        z2 = z4;
                                    } else if (readTag == 40) {
                                        this.cattax_ = codedInputStream.readEnum();
                                    } else if (readTag == 50) {
                                        boolean z7 = z2;
                                        if (!(z2 & true)) {
                                            boolean z8 = z2;
                                            boolean z9 = z2;
                                            this.extProto_ = new ArrayList();
                                            z7 = z2 | true;
                                        }
                                        this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        z2 = z7;
                                    } else if (readTag == 58) {
                                        Struct.Builder builder = null;
                                        Struct struct = this.ext_;
                                        builder = struct != null ? struct.toBuilder() : builder;
                                        boolean z10 = z2;
                                        Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                        boolean z11 = z2;
                                        this.ext_ = struct2;
                                        if (builder != null) {
                                            builder.mergeFrom(struct2);
                                            boolean z12 = z2;
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
                        } catch (Throwable th) {
                            if (z3 & true) {
                                this.cat_ = this.cat_.getUnmodifiableView();
                            }
                            if (z3 & true) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            }
                            this.unknownFields = newBuilder.build();
                            makeExtensionsImmutable();
                            throw th;
                        }
                    }
                    if (z2 & true) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                    }
                    if (z2 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }

                private Producer(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) (-1);
                }

                public static Producer getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.f32945xa9939fb9;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(Producer producer) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(producer);
                }

                public static Producer parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Producer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Producer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Producer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Producer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static Producer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static Producer parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static Producer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                public static Producer parseFrom(InputStream inputStream) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static Producer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Producer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static Producer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static Producer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static Producer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static Parser<Producer> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Producer)) {
                        return super.equals(obj);
                    }
                    Producer producer = (Producer) obj;
                    if (!getId().equals(producer.getId()) || !getName().equals(producer.getName()) || !getDomain().equals(producer.getDomain()) || !getCatList().equals(producer.getCatList()) || this.cattax_ != producer.cattax_ || hasExt() != producer.hasExt()) {
                        return false;
                    }
                    return (!hasExt() || getExt().equals(producer.getExt())) && getExtProtoList().equals(producer.getExtProtoList()) && this.unknownFields.equals(producer.unknownFields);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final String getCat(int i) {
                    return (String) this.cat_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final ByteString getCatBytes(int i) {
                    return this.cat_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final ProtocolStringList getCatList() {
                    return this.cat_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    CategoryTaxonomy categoryTaxonomy = valueOf;
                    if (valueOf == null) {
                        categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return categoryTaxonomy;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Producer getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final String getDomain() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.domain_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final ByteString getDomainBytes() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.domain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final Struct getExt() {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final Any getExtProto(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Parser<Producer> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                    int i2 = computeStringSize;
                    if (!getNameBytes().isEmpty()) {
                        i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.name_);
                    }
                    int i3 = i2;
                    if (!getDomainBytes().isEmpty()) {
                        i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.domain_);
                    }
                    int i4 = 0;
                    for (int i5 = 0; i5 < this.cat_.size(); i5++) {
                        i4 += computeStringSizeNoTag(this.cat_.getRaw(i5));
                    }
                    int size = i3 + i4 + (getCatList().size() * 1);
                    int i6 = size;
                    int i7 = 0;
                    if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                        i6 = size + CodedOutputStream.computeEnumSize(5, this.cattax_);
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

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public final boolean hasExt() {
                    return this.ext_ != null;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final int hashCode() {
                    if (this.memoizedHashCode != 0) {
                        return this.memoizedHashCode;
                    }
                    int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getDomain().hashCode();
                    int i = hashCode;
                    if (getCatCount() > 0) {
                        i = (((hashCode * 37) + 4) * 53) + getCatList().hashCode();
                    }
                    int i2 = (((i * 37) + 5) * 53) + this.cattax_;
                    int i3 = i2;
                    if (hasExt()) {
                        i3 = (((i2 * 37) + 7) * 53) + getExt().hashCode();
                    }
                    int i4 = i3;
                    if (getExtProtoCount() > 0) {
                        i4 = (((i3 * 37) + 6) * 53) + getExtProtoList().hashCode();
                    }
                    int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.f32946x3067fd37.ensureFieldAccessorsInitialized(Producer.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    byte b = this.memoizedIsInitialized;
                    if (b == 1) {
                        return true;
                    }
                    if (b == 0) {
                        return false;
                    }
                    this.memoizedIsInitialized = (byte) 1;
                    return true;
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Builder newBuilderForType() {
                    return newBuilder();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                    return new Producer();
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
                    if (!getNameBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                    }
                    if (!getDomainBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 3, this.domain_);
                    }
                    for (int i = 0; i < this.cat_.size(); i++) {
                        GeneratedMessageV3.writeString(codedOutputStream, 4, this.cat_.getRaw(i));
                    }
                    int i2 = 0;
                    if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                        codedOutputStream.writeEnum(5, this.cattax_);
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

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder.class */
            public interface ProducerOrBuilder extends MessageOrBuilder {
                String getCat(int i);

                ByteString getCatBytes(int i);

                int getCatCount();

                List<String> getCatList();

                CategoryTaxonomy getCattax();

                int getCattaxValue();

                String getDomain();

                ByteString getDomainBytes();

                Struct getExt();

                StructOrBuilder getExtOrBuilder();

                Any getExtProto(int i);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                AnyOrBuilder getExtProtoOrBuilder(int i);

                List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                String getId();

                ByteString getIdBytes();

                String getName();

                ByteString getNameBytes();

                boolean hasExt();
            }

            private Content() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.title_ = "";
                this.series_ = "";
                this.season_ = "";
                this.artist_ = "";
                this.genre_ = "";
                this.album_ = "";
                this.isrc_ = "";
                this.url_ = "";
                this.cat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.prodq_ = 0;
                this.context_ = 0;
                this.rating_ = "";
                this.urating_ = "";
                this.mrating_ = 0;
                this.keywords_ = "";
                this.lang_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Content(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    boolean z3 = z2;
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            Struct.Builder builder = null;
                            switch (readTag) {
                                case 0:
                                    break;
                                case 10:
                                    this.id_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 16:
                                    this.episode_ = codedInputStream.readUInt32();
                                    continue;
                                case 26:
                                    this.title_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 34:
                                    this.series_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 42:
                                    this.season_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 50:
                                    this.artist_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 58:
                                    this.genre_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 66:
                                    this.album_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 74:
                                    this.isrc_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 82:
                                    this.url_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 90:
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.cat_ = new LazyStringArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.cat_.add(readStringRequireUtf8);
                                    z2 = z4;
                                    continue;
                                case 96:
                                    this.cattax_ = codedInputStream.readEnum();
                                    continue;
                                case 104:
                                    this.prodq_ = codedInputStream.readEnum();
                                    continue;
                                case 112:
                                    this.context_ = codedInputStream.readEnum();
                                    continue;
                                case 122:
                                    this.rating_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 130:
                                    this.urating_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 136:
                                    this.mrating_ = codedInputStream.readEnum();
                                    continue;
                                case 146:
                                    this.keywords_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 152:
                                    this.live_ = codedInputStream.readBool();
                                    continue;
                                case 160:
                                    this.srcrel_ = codedInputStream.readUInt32();
                                    continue;
                                case 168:
                                    this.len_ = codedInputStream.readUInt32();
                                    continue;
                                case 178:
                                    this.lang_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 184:
                                    this.embed_ = codedInputStream.readBool();
                                    continue;
                                case 194:
                                    Producer producer = this.producer_;
                                    Producer.Builder builder2 = producer != null ? producer.toBuilder() : null;
                                    boolean z7 = z2;
                                    Producer producer2 = (Producer) codedInputStream.readMessage(Producer.parser(), extensionRegistryLite);
                                    boolean z8 = z2;
                                    this.producer_ = producer2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(producer2);
                                        boolean z9 = z2;
                                        this.producer_ = builder2.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 202:
                                    boolean z10 = z2;
                                    if (!(z2 & true)) {
                                        boolean z11 = z2;
                                        boolean z12 = z2;
                                        this.data_ = new ArrayList();
                                        z10 = z2 | true;
                                    }
                                    this.data_.add(codedInputStream.readMessage(Data.parser(), extensionRegistryLite));
                                    z2 = z10;
                                    continue;
                                case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                                    boolean z13 = z2;
                                    if (!(z2 & true)) {
                                        boolean z14 = z2;
                                        boolean z15 = z2;
                                        this.extProto_ = new ArrayList();
                                        z13 = z2 | true;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    z2 = z13;
                                    continue;
                                case 218:
                                    Struct struct = this.ext_;
                                    builder = struct != null ? struct.toBuilder() : builder;
                                    boolean z16 = z2;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    boolean z17 = z2;
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        boolean z18 = z2;
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
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.cat_ = this.cat_.getUnmodifiableView();
                        }
                        if (z3 & true) {
                            this.data_ = Collections.unmodifiableList(this.data_);
                        }
                        if (z3 & true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if (z2 & true) {
                    this.cat_ = this.cat_.getUnmodifiableView();
                }
                if (z2 & true) {
                    this.data_ = Collections.unmodifiableList(this.data_);
                }
                if (z2 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }

            private Content(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Content getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32947xae6b1132;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Content content) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(content);
            }

            public static Content parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Content) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Content parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Content) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Content parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Content parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Content parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Content parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Content parseFrom(InputStream inputStream) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Content parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Content parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Content parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Content parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Content parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Content> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Content)) {
                    return super.equals(obj);
                }
                Content content = (Content) obj;
                if (!getId().equals(content.getId()) || getEpisode() != content.getEpisode() || !getTitle().equals(content.getTitle()) || !getSeries().equals(content.getSeries()) || !getSeason().equals(content.getSeason()) || !getArtist().equals(content.getArtist()) || !getGenre().equals(content.getGenre()) || !getAlbum().equals(content.getAlbum()) || !getIsrc().equals(content.getIsrc()) || !getUrl().equals(content.getUrl()) || !getCatList().equals(content.getCatList()) || this.cattax_ != content.cattax_ || this.prodq_ != content.prodq_ || this.context_ != content.context_ || !getRating().equals(content.getRating()) || !getUrating().equals(content.getUrating()) || this.mrating_ != content.mrating_ || !getKeywords().equals(content.getKeywords()) || getLive() != content.getLive() || getSrcrel() != content.getSrcrel() || getLen() != content.getLen() || !getLang().equals(content.getLang()) || getEmbed() != content.getEmbed() || hasProducer() != content.hasProducer()) {
                    return false;
                }
                if ((hasProducer() && !getProducer().equals(content.getProducer())) || !getDataList().equals(content.getDataList()) || hasExt() != content.hasExt()) {
                    return false;
                }
                return (!hasExt() || getExt().equals(content.getExt())) && getExtProtoList().equals(content.getExtProtoList()) && this.unknownFields.equals(content.unknownFields);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getAlbum() {
                Object obj = this.album_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.album_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getAlbumBytes() {
                Object obj = this.album_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.album_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getArtist() {
                Object obj = this.artist_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.artist_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getArtistBytes() {
                Object obj = this.artist_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.artist_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getCat(int i) {
                return (String) this.cat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getCatBytes(int i) {
                return this.cat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ProtocolStringList getCatList() {
                return this.cat_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                CategoryTaxonomy categoryTaxonomy = valueOf;
                if (valueOf == null) {
                    categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                }
                return categoryTaxonomy;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ContentContext getContext() {
                ContentContext valueOf = ContentContext.valueOf(this.context_);
                ContentContext contentContext = valueOf;
                if (valueOf == null) {
                    contentContext = ContentContext.UNRECOGNIZED;
                }
                return contentContext;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getContextValue() {
                return this.context_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final Data getData(int i) {
                return this.data_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getDataCount() {
                return this.data_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final List<Data> getDataList() {
                return this.data_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final DataOrBuilder getDataOrBuilder(int i) {
                return this.data_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final List<? extends DataOrBuilder> getDataOrBuilderList() {
                return this.data_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Content getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final boolean getEmbed() {
                return this.embed_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getEpisode() {
                return this.episode_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getGenre() {
                Object obj = this.genre_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.genre_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getGenreBytes() {
                Object obj = this.genre_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.genre_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getIsrc() {
                Object obj = this.isrc_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.isrc_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getIsrcBytes() {
                Object obj = this.isrc_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.isrc_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getKeywords() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.keywords_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getLang() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lang_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getLangBytes() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lang_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getLen() {
                return this.len_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final boolean getLive() {
                return this.live_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final MediaRating getMrating() {
                MediaRating valueOf = MediaRating.valueOf(this.mrating_);
                MediaRating mediaRating = valueOf;
                if (valueOf == null) {
                    mediaRating = MediaRating.UNRECOGNIZED;
                }
                return mediaRating;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getMratingValue() {
                return this.mrating_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Content> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ProductionQuality getProdq() {
                ProductionQuality valueOf = ProductionQuality.valueOf(this.prodq_);
                ProductionQuality productionQuality = valueOf;
                if (valueOf == null) {
                    productionQuality = ProductionQuality.UNRECOGNIZED;
                }
                return productionQuality;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getProdqValue() {
                return this.prodq_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final Producer getProducer() {
                Producer producer = this.producer_;
                Producer producer2 = producer;
                if (producer == null) {
                    producer2 = Producer.getDefaultInstance();
                }
                return producer2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ProducerOrBuilder getProducerOrBuilder() {
                return getProducer();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getRating() {
                Object obj = this.rating_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.rating_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getRatingBytes() {
                Object obj = this.rating_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.rating_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getSeason() {
                Object obj = this.season_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.season_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getSeasonBytes() {
                Object obj = this.season_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.season_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i;
                int i2;
                int i3 = this.memoizedSize;
                if (i3 != -1) {
                    return i3;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                int i4 = this.episode_;
                int i5 = computeStringSize;
                if (i4 != 0) {
                    i5 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i4);
                }
                int i6 = i5;
                if (!getTitleBytes().isEmpty()) {
                    i6 = i5 + GeneratedMessageV3.computeStringSize(3, this.title_);
                }
                int i7 = i6;
                if (!getSeriesBytes().isEmpty()) {
                    i7 = i6 + GeneratedMessageV3.computeStringSize(4, this.series_);
                }
                int i8 = i7;
                if (!getSeasonBytes().isEmpty()) {
                    i8 = i7 + GeneratedMessageV3.computeStringSize(5, this.season_);
                }
                int i9 = i8;
                if (!getArtistBytes().isEmpty()) {
                    i9 = i8 + GeneratedMessageV3.computeStringSize(6, this.artist_);
                }
                int i10 = i9;
                if (!getGenreBytes().isEmpty()) {
                    i10 = i9 + GeneratedMessageV3.computeStringSize(7, this.genre_);
                }
                int i11 = i10;
                if (!getAlbumBytes().isEmpty()) {
                    i11 = i10 + GeneratedMessageV3.computeStringSize(8, this.album_);
                }
                int i12 = i11;
                if (!getIsrcBytes().isEmpty()) {
                    i12 = i11 + GeneratedMessageV3.computeStringSize(9, this.isrc_);
                }
                int i13 = i12;
                if (!getUrlBytes().isEmpty()) {
                    i13 = i12 + GeneratedMessageV3.computeStringSize(10, this.url_);
                }
                int i14 = 0;
                for (int i15 = 0; i15 < this.cat_.size(); i15++) {
                    i14 += computeStringSizeNoTag(this.cat_.getRaw(i15));
                }
                int size = i13 + i14 + (getCatList().size() * 1);
                int i16 = size;
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    i16 = size + CodedOutputStream.computeEnumSize(12, this.cattax_);
                }
                int i17 = i16;
                if (this.prodq_ != ProductionQuality.PRODUCTION_QUALITY_INVALID.getNumber()) {
                    i17 = i16 + CodedOutputStream.computeEnumSize(13, this.prodq_);
                }
                int i18 = i17;
                if (this.context_ != ContentContext.CONTENT_CONTEXT_INVALID.getNumber()) {
                    i18 = i17 + CodedOutputStream.computeEnumSize(14, this.context_);
                }
                int i19 = i18;
                if (!getRatingBytes().isEmpty()) {
                    i19 = i18 + GeneratedMessageV3.computeStringSize(15, this.rating_);
                }
                int i20 = i19;
                if (!getUratingBytes().isEmpty()) {
                    i20 = i19 + GeneratedMessageV3.computeStringSize(16, this.urating_);
                }
                int i21 = i20;
                if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
                    i21 = i20 + CodedOutputStream.computeEnumSize(17, this.mrating_);
                }
                int i22 = i21;
                if (!getKeywordsBytes().isEmpty()) {
                    i22 = i21 + GeneratedMessageV3.computeStringSize(18, this.keywords_);
                }
                boolean z = this.live_;
                int i23 = i22;
                if (z) {
                    i23 = i22 + CodedOutputStream.computeBoolSize(19, z);
                }
                int i24 = this.srcrel_;
                int i25 = i23;
                if (i24 != 0) {
                    i25 = i23 + CodedOutputStream.computeUInt32Size(20, i24);
                }
                int i26 = this.len_;
                int i27 = i25;
                if (i26 != 0) {
                    i27 = i25 + CodedOutputStream.computeUInt32Size(21, i26);
                }
                int i28 = i27;
                if (!getLangBytes().isEmpty()) {
                    i28 = i27 + GeneratedMessageV3.computeStringSize(22, this.lang_);
                }
                boolean z2 = this.embed_;
                int i29 = i28;
                if (z2) {
                    i29 = i28 + CodedOutputStream.computeBoolSize(23, z2);
                }
                int i30 = i29;
                if (this.producer_ != null) {
                    i30 = i29 + CodedOutputStream.computeMessageSize(24, getProducer());
                }
                int i31 = 0;
                while (true) {
                    i = i30;
                    if (i31 < this.data_.size()) {
                        i30 += CodedOutputStream.computeMessageSize(25, this.data_.get(i31));
                        i31++;
                    }
                }
                for (i2 = 0; i2 < this.extProto_.size(); i2++) {
                    i += CodedOutputStream.computeMessageSize(26, this.extProto_.get(i2));
                }
                int i32 = i;
                if (this.ext_ != null) {
                    i32 = i + CodedOutputStream.computeMessageSize(27, getExt());
                }
                int serializedSize = i32 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getSeries() {
                Object obj = this.series_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.series_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getSeriesBytes() {
                Object obj = this.series_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.series_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final int getSrcrel() {
                return this.srcrel_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getTitleBytes() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.title_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getUrating() {
                Object obj = this.urating_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.urating_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getUratingBytes() {
                Object obj = this.urating_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.urating_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final String getUrl() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.url_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final ByteString getUrlBytes() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.url_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public final boolean hasProducer() {
                return this.producer_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getEpisode()) * 37) + 3) * 53) + getTitle().hashCode()) * 37) + 4) * 53) + getSeries().hashCode()) * 37) + 5) * 53) + getSeason().hashCode()) * 37) + 6) * 53) + getArtist().hashCode()) * 37) + 7) * 53) + getGenre().hashCode()) * 37) + 8) * 53) + getAlbum().hashCode()) * 37) + 9) * 53) + getIsrc().hashCode()) * 37) + 10) * 53) + getUrl().hashCode();
                int i = hashCode;
                if (getCatCount() > 0) {
                    i = (((hashCode * 37) + 11) * 53) + getCatList().hashCode();
                }
                int hashCode2 = (((((((((((((((((((((((((((((((((((((((((((((((i * 37) + 12) * 53) + this.cattax_) * 37) + 13) * 53) + this.prodq_) * 37) + 14) * 53) + this.context_) * 37) + 15) * 53) + getRating().hashCode()) * 37) + 16) * 53) + getUrating().hashCode()) * 37) + 17) * 53) + this.mrating_) * 37) + 18) * 53) + getKeywords().hashCode()) * 37) + 19) * 53) + Internal.hashBoolean(getLive())) * 37) + 20) * 53) + getSrcrel()) * 37) + 21) * 53) + getLen()) * 37) + 22) * 53) + getLang().hashCode()) * 37) + 23) * 53) + Internal.hashBoolean(getEmbed());
                int i2 = hashCode2;
                if (hasProducer()) {
                    i2 = (((hashCode2 * 37) + 24) * 53) + getProducer().hashCode();
                }
                int i3 = i2;
                if (getDataCount() > 0) {
                    i3 = (((i2 * 37) + 25) * 53) + getDataList().hashCode();
                }
                int i4 = i3;
                if (hasExt()) {
                    i4 = (((i3 * 37) + 27) * 53) + getExt().hashCode();
                }
                int i5 = i4;
                if (getExtProtoCount() > 0) {
                    i5 = (((i4 * 37) + 26) * 53) + getExtProtoList().hashCode();
                }
                int hashCode3 = (i5 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32948xb796e5b0.ensureFieldAccessorsInitialized(Content.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder newBuilderForType() {
                return newBuilder();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new Content();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                int i;
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                int i2 = this.episode_;
                if (i2 != 0) {
                    codedOutputStream.writeUInt32(2, i2);
                }
                if (!getTitleBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.title_);
                }
                if (!getSeriesBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.series_);
                }
                if (!getSeasonBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.season_);
                }
                if (!getArtistBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.artist_);
                }
                if (!getGenreBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 7, this.genre_);
                }
                if (!getAlbumBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 8, this.album_);
                }
                if (!getIsrcBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 9, this.isrc_);
                }
                if (!getUrlBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 10, this.url_);
                }
                for (int i3 = 0; i3 < this.cat_.size(); i3++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 11, this.cat_.getRaw(i3));
                }
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(12, this.cattax_);
                }
                if (this.prodq_ != ProductionQuality.PRODUCTION_QUALITY_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(13, this.prodq_);
                }
                if (this.context_ != ContentContext.CONTENT_CONTEXT_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(14, this.context_);
                }
                if (!getRatingBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 15, this.rating_);
                }
                if (!getUratingBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 16, this.urating_);
                }
                if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(17, this.mrating_);
                }
                if (!getKeywordsBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 18, this.keywords_);
                }
                boolean z = this.live_;
                if (z) {
                    codedOutputStream.writeBool(19, z);
                }
                int i4 = this.srcrel_;
                if (i4 != 0) {
                    codedOutputStream.writeUInt32(20, i4);
                }
                int i5 = this.len_;
                if (i5 != 0) {
                    codedOutputStream.writeUInt32(21, i5);
                }
                if (!getLangBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 22, this.lang_);
                }
                boolean z2 = this.embed_;
                if (z2) {
                    codedOutputStream.writeBool(23, z2);
                }
                if (this.producer_ != null) {
                    codedOutputStream.writeMessage(24, getProducer());
                }
                int i6 = 0;
                while (true) {
                    if (i6 < this.data_.size()) {
                        codedOutputStream.writeMessage(25, this.data_.get(i6));
                        i6++;
                    }
                }
                for (i = 0; i < this.extProto_.size(); i++) {
                    codedOutputStream.writeMessage(26, this.extProto_.get(i));
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(27, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$ContentOrBuilder.class */
        public interface ContentOrBuilder extends MessageOrBuilder {
            String getAlbum();

            ByteString getAlbumBytes();

            String getArtist();

            ByteString getArtistBytes();

            String getCat(int i);

            ByteString getCatBytes(int i);

            int getCatCount();

            List<String> getCatList();

            CategoryTaxonomy getCattax();

            int getCattaxValue();

            ContentContext getContext();

            int getContextValue();

            Data getData(int i);

            int getDataCount();

            List<Data> getDataList();

            DataOrBuilder getDataOrBuilder(int i);

            List<? extends DataOrBuilder> getDataOrBuilderList();

            boolean getEmbed();

            int getEpisode();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getGenre();

            ByteString getGenreBytes();

            String getId();

            ByteString getIdBytes();

            String getIsrc();

            ByteString getIsrcBytes();

            String getKeywords();

            ByteString getKeywordsBytes();

            String getLang();

            ByteString getLangBytes();

            int getLen();

            boolean getLive();

            MediaRating getMrating();

            int getMratingValue();

            ProductionQuality getProdq();

            int getProdqValue();

            Content.Producer getProducer();

            Content.ProducerOrBuilder getProducerOrBuilder();

            String getRating();

            ByteString getRatingBytes();

            String getSeason();

            ByteString getSeasonBytes();

            String getSeries();

            ByteString getSeriesBytes();

            int getSrcrel();

            String getTitle();

            ByteString getTitleBytes();

            String getUrating();

            ByteString getUratingBytes();

            String getUrl();

            ByteString getUrlBytes();

            boolean hasExt();

            boolean hasProducer();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Publisher.class */
        public static final class Publisher extends GeneratedMessageV3 implements PublisherOrBuilder {
            public static final int CATTAX_FIELD_NUMBER = 5;
            public static final int CAT_FIELD_NUMBER = 4;
            public static final int DOMAIN_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 7;
            public static final int EXT_PROTO_FIELD_NUMBER = 6;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int NAME_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private LazyStringList cat_;
            private int cattax_;
            private volatile Object domain_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private static final Publisher DEFAULT_INSTANCE = new Publisher();
            private static final Parser<Publisher> PARSER = new AbstractParser<Publisher>() { // from class: com.explorestack.protobuf.adcom.Context.App.Publisher.1
                @Override // com.explorestack.protobuf.Parser
                public final Publisher parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Publisher(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$Publisher$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PublisherOrBuilder {
                private int bitField0_;
                private LazyStringList cat_;
                private int cattax_;
                private Object domain_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private Object name_;

                private Builder() {
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.cattax_ = 0;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.cattax_ = 0;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureCatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.cat_ = new LazyStringArrayList(this.cat_);
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
                    return AdcomProto.f32949xd51a888f;
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
                    if (Publisher.alwaysUseFieldBuilders) {
                        getExtProtoFieldBuilder();
                    }
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

                public final Builder addCat(String str) {
                    Objects.requireNonNull(str);
                    ensureCatIsMutable();
                    this.cat_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addCatBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Publisher.checkByteStringIsUtf8(byteString);
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
                public final Publisher build() {
                    Publisher buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Publisher buildPartial() {
                    Publisher publisher = new Publisher(this);
                    publisher.id_ = this.id_;
                    publisher.name_ = this.name_;
                    publisher.domain_ = this.domain_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    publisher.cat_ = this.cat_;
                    publisher.cattax_ = this.cattax_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        publisher.ext_ = this.ext_;
                    } else {
                        publisher.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        publisher.extProto_ = this.extProto_;
                    } else {
                        publisher.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return publisher;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    this.cattax_ = 0;
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

                public final Builder clearCat() {
                    this.cat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public final Builder clearCattax() {
                    this.cattax_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearDomain() {
                    this.domain_ = Publisher.getDefaultInstance().getDomain();
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
                    this.id_ = Publisher.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public final Builder clearName() {
                    this.name_ = Publisher.getDefaultInstance().getName();
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final String getCat(int i) {
                    return (String) this.cat_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final ByteString getCatBytes(int i) {
                    return this.cat_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final ProtocolStringList getCatList() {
                    return this.cat_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    CategoryTaxonomy categoryTaxonomy = valueOf;
                    if (valueOf == null) {
                        categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return categoryTaxonomy;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Publisher getDefaultInstanceForType() {
                    return Publisher.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.f32949xd51a888f;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final String getDomain() {
                    Object obj = this.domain_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.domain_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final ByteString getDomainBytes() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.domain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final Struct getExt() {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }
                    return singleFieldBuilderV3.getMessage();
                }

                public final Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.f32950x6bbbb00d.ensureFieldAccessorsInitialized(Publisher.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Context.App.Publisher.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.App.Publisher.access$1300()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        com.explorestack.protobuf.adcom.Context$App$Publisher r0 = (com.explorestack.protobuf.adcom.Context.App.Publisher) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L1a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Context$App$Publisher$Builder r0 = r0.mergeFrom(r1)
                    L1a:
                        r0 = r4
                        return r0
                    L1c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L31
                    L22:
                        r5 = move-exception
                        r0 = r5
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                        com.explorestack.protobuf.adcom.Context$App$Publisher r0 = (com.explorestack.protobuf.adcom.Context.App.Publisher) r0     // Catch: java.lang.Throwable -> L1c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                        throw r0     // Catch: java.lang.Throwable -> L30
                    L30:
                        r5 = move-exception
                    L31:
                        r0 = r6
                        if (r0 == 0) goto L3b
                        r0 = r4
                        r1 = r6
                        com.explorestack.protobuf.adcom.Context$App$Publisher$Builder r0 = r0.mergeFrom(r1)
                    L3b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Publisher.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$App$Publisher$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Publisher) {
                        return mergeFrom((Publisher) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Publisher publisher) {
                    if (publisher == Publisher.getDefaultInstance()) {
                        return this;
                    }
                    if (!publisher.getId().isEmpty()) {
                        this.id_ = publisher.id_;
                        onChanged();
                    }
                    if (!publisher.getName().isEmpty()) {
                        this.name_ = publisher.name_;
                        onChanged();
                    }
                    if (!publisher.getDomain().isEmpty()) {
                        this.domain_ = publisher.domain_;
                        onChanged();
                    }
                    if (!publisher.cat_.isEmpty()) {
                        if (this.cat_.isEmpty()) {
                            this.cat_ = publisher.cat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureCatIsMutable();
                            this.cat_.addAll(publisher.cat_);
                        }
                        onChanged();
                    }
                    if (publisher.cattax_ != 0) {
                        setCattaxValue(publisher.getCattaxValue());
                    }
                    if (publisher.hasExt()) {
                        mergeExt(publisher.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!publisher.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = publisher.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(publisher.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!publisher.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = publisher.extProto_;
                            this.bitField0_ &= -3;
                            if (Publisher.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(publisher.extProto_);
                        }
                    }
                    mergeUnknownFields(publisher.unknownFields);
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

                public final Builder setDomain(String str) {
                    Objects.requireNonNull(str);
                    this.domain_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setDomainBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Publisher.checkByteStringIsUtf8(byteString);
                    this.domain_ = byteString;
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
                    Publisher.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setName(String str) {
                    Objects.requireNonNull(str);
                    this.name_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setNameBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Publisher.checkByteStringIsUtf8(byteString);
                    this.name_ = byteString;
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

            private Publisher() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                this.cat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Publisher(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    boolean z3 = z2;
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.id_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.name_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 26) {
                                    this.domain_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 34) {
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.cat_ = new LazyStringArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.cat_.add(readStringRequireUtf8);
                                    z2 = z4;
                                } else if (readTag == 40) {
                                    this.cattax_ = codedInputStream.readEnum();
                                } else if (readTag == 50) {
                                    boolean z7 = z2;
                                    if (!(z2 & true)) {
                                        boolean z8 = z2;
                                        boolean z9 = z2;
                                        this.extProto_ = new ArrayList();
                                        z7 = z2 | true;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    z2 = z7;
                                } else if (readTag == 58) {
                                    Struct.Builder builder = null;
                                    Struct struct = this.ext_;
                                    builder = struct != null ? struct.toBuilder() : builder;
                                    boolean z10 = z2;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    boolean z11 = z2;
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        boolean z12 = z2;
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
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.cat_ = this.cat_.getUnmodifiableView();
                        }
                        if (z3 & true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if (z2 & true) {
                    this.cat_ = this.cat_.getUnmodifiableView();
                }
                if (z2 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }

            private Publisher(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Publisher getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32949xd51a888f;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Publisher publisher) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(publisher);
            }

            public static Publisher parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Publisher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Publisher parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Publisher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Publisher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Publisher parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Publisher parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Publisher parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Publisher parseFrom(InputStream inputStream) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Publisher parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Publisher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Publisher parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Publisher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Publisher parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Publisher> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Publisher)) {
                    return super.equals(obj);
                }
                Publisher publisher = (Publisher) obj;
                if (!getId().equals(publisher.getId()) || !getName().equals(publisher.getName()) || !getDomain().equals(publisher.getDomain()) || !getCatList().equals(publisher.getCatList()) || this.cattax_ != publisher.cattax_ || hasExt() != publisher.hasExt()) {
                    return false;
                }
                return (!hasExt() || getExt().equals(publisher.getExt())) && getExtProtoList().equals(publisher.getExtProtoList()) && this.unknownFields.equals(publisher.unknownFields);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final String getCat(int i) {
                return (String) this.cat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final ByteString getCatBytes(int i) {
                return this.cat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final ProtocolStringList getCatList() {
                return this.cat_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                CategoryTaxonomy categoryTaxonomy = valueOf;
                if (valueOf == null) {
                    categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                }
                return categoryTaxonomy;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Publisher getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final String getDomain() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domain_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final ByteString getDomainBytes() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.domain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Publisher> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                int i2 = computeStringSize;
                if (!getNameBytes().isEmpty()) {
                    i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.name_);
                }
                int i3 = i2;
                if (!getDomainBytes().isEmpty()) {
                    i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.domain_);
                }
                int i4 = 0;
                for (int i5 = 0; i5 < this.cat_.size(); i5++) {
                    i4 += computeStringSizeNoTag(this.cat_.getRaw(i5));
                }
                int size = i3 + i4 + (getCatList().size() * 1);
                int i6 = size;
                int i7 = 0;
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    i6 = size + CodedOutputStream.computeEnumSize(5, this.cattax_);
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getDomain().hashCode();
                int i = hashCode;
                if (getCatCount() > 0) {
                    i = (((hashCode * 37) + 4) * 53) + getCatList().hashCode();
                }
                int i2 = (((i * 37) + 5) * 53) + this.cattax_;
                int i3 = i2;
                if (hasExt()) {
                    i3 = (((i2 * 37) + 7) * 53) + getExt().hashCode();
                }
                int i4 = i3;
                if (getExtProtoCount() > 0) {
                    i4 = (((i3 * 37) + 6) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32950x6bbbb00d.ensureFieldAccessorsInitialized(Publisher.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder newBuilderForType() {
                return newBuilder();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new Publisher();
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
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                }
                if (!getDomainBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.domain_);
                }
                for (int i = 0; i < this.cat_.size(); i++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.cat_.getRaw(i));
                }
                int i2 = 0;
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(5, this.cattax_);
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder.class */
        public interface PublisherOrBuilder extends MessageOrBuilder {
            String getCat(int i);

            ByteString getCatBytes(int i);

            int getCatCount();

            List<String> getCatList();

            CategoryTaxonomy getCattax();

            int getCattaxValue();

            String getDomain();

            ByteString getDomainBytes();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            String getName();

            ByteString getNameBytes();

            boolean hasExt();
        }

        private App() {
            this.memoizedIsInitialized = (byte) (-1);
            this.id_ = "";
            this.name_ = "";
            this.domain_ = "";
            this.cat_ = LazyStringArrayList.EMPTY;
            this.sectcat_ = LazyStringArrayList.EMPTY;
            this.pagecat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.keywords_ = "";
            this.bundle_ = "";
            this.storeid_ = "";
            this.storeurl_ = "";
            this.ver_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private App(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        Struct.Builder builder = null;
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                this.id_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 18:
                                this.name_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 26:
                                Publisher publisher = this.pub_;
                                Publisher.Builder builder2 = publisher != null ? publisher.toBuilder() : null;
                                boolean z4 = z2;
                                Publisher publisher2 = (Publisher) codedInputStream.readMessage(Publisher.parser(), extensionRegistryLite);
                                boolean z5 = z2;
                                this.pub_ = publisher2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(publisher2);
                                    boolean z6 = z2;
                                    this.pub_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 34:
                                Content content = this.content_;
                                Content.Builder builder3 = content != null ? content.toBuilder() : null;
                                boolean z7 = z2;
                                Content content2 = (Content) codedInputStream.readMessage(Content.parser(), extensionRegistryLite);
                                boolean z8 = z2;
                                this.content_ = content2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(content2);
                                    boolean z9 = z2;
                                    this.content_ = builder3.buildPartial();
                                } else {
                                    continue;
                                }
                            case 42:
                                this.domain_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 50:
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                boolean z10 = z2;
                                if (!(z2 & true)) {
                                    boolean z11 = z2;
                                    boolean z12 = z2;
                                    this.cat_ = new LazyStringArrayList();
                                    z10 = z2 | true;
                                }
                                this.cat_.add(readStringRequireUtf8);
                                z2 = z10;
                                continue;
                            case 58:
                                String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                                boolean z13 = z2;
                                if (!(z2 & true)) {
                                    boolean z14 = z2;
                                    boolean z15 = z2;
                                    this.sectcat_ = new LazyStringArrayList();
                                    z13 = z2 | true;
                                }
                                this.sectcat_.add(readStringRequireUtf82);
                                z2 = z13;
                                continue;
                            case 66:
                                String readStringRequireUtf83 = codedInputStream.readStringRequireUtf8();
                                boolean z16 = z2;
                                if (!(z2 & true)) {
                                    boolean z17 = z2;
                                    boolean z18 = z2;
                                    this.pagecat_ = new LazyStringArrayList();
                                    z16 = z2 | true;
                                }
                                this.pagecat_.add(readStringRequireUtf83);
                                z2 = z16;
                                continue;
                            case 72:
                                this.cattax_ = codedInputStream.readEnum();
                                continue;
                            case 80:
                                this.privpolicy_ = codedInputStream.readBool();
                                continue;
                            case 90:
                                this.keywords_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 98:
                                this.bundle_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 106:
                                this.storeid_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 114:
                                this.storeurl_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 122:
                                this.ver_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 128:
                                this.paid_ = codedInputStream.readBool();
                                continue;
                            case 138:
                                boolean z19 = z2;
                                if (!(z2 & true)) {
                                    boolean z20 = z2;
                                    boolean z21 = z2;
                                    this.extProto_ = new ArrayList();
                                    z19 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z19;
                                continue;
                            case 146:
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z22 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z23 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z24 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                    }
                    if (z3 & true) {
                        this.sectcat_ = this.sectcat_.getUnmodifiableView();
                    }
                    if (z3 & true) {
                        this.pagecat_ = this.pagecat_.getUnmodifiableView();
                    }
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.cat_ = this.cat_.getUnmodifiableView();
            }
            if (z2 & true) {
                this.sectcat_ = this.sectcat_.getUnmodifiableView();
            }
            if (z2 & true) {
                this.pagecat_ = this.pagecat_.getUnmodifiableView();
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private App(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static App getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_App_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(App app) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(app);
        }

        public static App parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static App parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static App parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static App parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static App parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static App parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static App parseFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static App parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static App parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static App parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static App parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static App parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<App> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof App)) {
                return super.equals(obj);
            }
            App app = (App) obj;
            if (!getId().equals(app.getId()) || !getName().equals(app.getName()) || hasPub() != app.hasPub()) {
                return false;
            }
            if ((hasPub() && !getPub().equals(app.getPub())) || hasContent() != app.hasContent()) {
                return false;
            }
            if ((hasContent() && !getContent().equals(app.getContent())) || !getDomain().equals(app.getDomain()) || !getCatList().equals(app.getCatList()) || !getSectcatList().equals(app.getSectcatList()) || !getPagecatList().equals(app.getPagecatList()) || this.cattax_ != app.cattax_ || getPrivpolicy() != app.getPrivpolicy() || !getKeywords().equals(app.getKeywords()) || !getBundle().equals(app.getBundle()) || !getStoreid().equals(app.getStoreid()) || !getStoreurl().equals(app.getStoreurl()) || !getVer().equals(app.getVer()) || getPaid() != app.getPaid() || hasExt() != app.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(app.getExt())) && getExtProtoList().equals(app.getExtProtoList()) && this.unknownFields.equals(app.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getBundle() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bundle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getCat(int i) {
            return (String) this.cat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getCatBytes(int i) {
            return this.cat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final int getCatCount() {
            return this.cat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ProtocolStringList getCatList() {
            return this.cat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            CategoryTaxonomy categoryTaxonomy = valueOf;
            if (valueOf == null) {
                categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
            }
            return categoryTaxonomy;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final Content getContent() {
            Content content = this.content_;
            Content content2 = content;
            if (content == null) {
                content2 = Content.getDefaultInstance();
            }
            return content2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ContentOrBuilder getContentOrBuilder() {
            return getContent();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final App getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getDomain() {
            Object obj = this.domain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.domain_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getDomainBytes() {
            Object obj = this.domain_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domain_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getKeywords() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.keywords_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getKeywordsBytes() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.keywords_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getPagecat(int i) {
            return (String) this.pagecat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getPagecatBytes(int i) {
            return this.pagecat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final int getPagecatCount() {
            return this.pagecat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ProtocolStringList getPagecatList() {
            return this.pagecat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final boolean getPaid() {
            return this.paid_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<App> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final boolean getPrivpolicy() {
            return this.privpolicy_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final Publisher getPub() {
            Publisher publisher = this.pub_;
            Publisher publisher2 = publisher;
            if (publisher == null) {
                publisher2 = Publisher.getDefaultInstance();
            }
            return publisher2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final PublisherOrBuilder getPubOrBuilder() {
            return getPub();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getSectcat(int i) {
            return (String) this.sectcat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getSectcatBytes(int i) {
            return this.sectcat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final int getSectcatCount() {
            return this.sectcat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ProtocolStringList getSectcatList() {
            return this.sectcat_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
            int i2 = computeStringSize;
            if (!getNameBytes().isEmpty()) {
                i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            int i3 = i2;
            if (this.pub_ != null) {
                i3 = i2 + CodedOutputStream.computeMessageSize(3, getPub());
            }
            int i4 = i3;
            if (this.content_ != null) {
                i4 = i3 + CodedOutputStream.computeMessageSize(4, getContent());
            }
            int i5 = i4;
            if (!getDomainBytes().isEmpty()) {
                i5 = i4 + GeneratedMessageV3.computeStringSize(5, this.domain_);
            }
            int i6 = 0;
            for (int i7 = 0; i7 < this.cat_.size(); i7++) {
                i6 += computeStringSizeNoTag(this.cat_.getRaw(i7));
            }
            int size = getCatList().size();
            int i8 = 0;
            for (int i9 = 0; i9 < this.sectcat_.size(); i9++) {
                i8 += computeStringSizeNoTag(this.sectcat_.getRaw(i9));
            }
            int size2 = getSectcatList().size();
            int i10 = 0;
            for (int i11 = 0; i11 < this.pagecat_.size(); i11++) {
                i10 += computeStringSizeNoTag(this.pagecat_.getRaw(i11));
            }
            int size3 = i5 + i6 + (size * 1) + i8 + (size2 * 1) + i10 + (getPagecatList().size() * 1);
            int i12 = size3;
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                i12 = size3 + CodedOutputStream.computeEnumSize(9, this.cattax_);
            }
            boolean z = this.privpolicy_;
            int i13 = i12;
            if (z) {
                i13 = i12 + CodedOutputStream.computeBoolSize(10, z);
            }
            int i14 = i13;
            if (!getKeywordsBytes().isEmpty()) {
                i14 = i13 + GeneratedMessageV3.computeStringSize(11, this.keywords_);
            }
            int i15 = i14;
            if (!getBundleBytes().isEmpty()) {
                i15 = i14 + GeneratedMessageV3.computeStringSize(12, this.bundle_);
            }
            int i16 = i15;
            if (!getStoreidBytes().isEmpty()) {
                i16 = i15 + GeneratedMessageV3.computeStringSize(13, this.storeid_);
            }
            int i17 = i16;
            if (!getStoreurlBytes().isEmpty()) {
                i17 = i16 + GeneratedMessageV3.computeStringSize(14, this.storeurl_);
            }
            int i18 = i17;
            if (!getVerBytes().isEmpty()) {
                i18 = i17 + GeneratedMessageV3.computeStringSize(15, this.ver_);
            }
            boolean z2 = this.paid_;
            int i19 = i18;
            int i20 = 0;
            if (z2) {
                i19 = i18 + CodedOutputStream.computeBoolSize(16, z2);
                i20 = 0;
            }
            while (i20 < this.extProto_.size()) {
                i19 += CodedOutputStream.computeMessageSize(17, this.extProto_.get(i20));
                i20++;
            }
            int i21 = i19;
            if (this.ext_ != null) {
                i21 = i19 + CodedOutputStream.computeMessageSize(18, getExt());
            }
            int serializedSize = i21 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getStoreid() {
            Object obj = this.storeid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.storeid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getStoreidBytes() {
            Object obj = this.storeid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.storeid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getStoreurl() {
            Object obj = this.storeurl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.storeurl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getStoreurlBytes() {
            Object obj = this.storeurl_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.storeurl_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final String getVer() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ver_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final ByteString getVerBytes() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final boolean hasContent() {
            return this.content_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public final boolean hasPub() {
            return this.pub_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode();
            int i = hashCode;
            if (hasPub()) {
                i = (((hashCode * 37) + 3) * 53) + getPub().hashCode();
            }
            int i2 = i;
            if (hasContent()) {
                i2 = (((i * 37) + 4) * 53) + getContent().hashCode();
            }
            int hashCode2 = (((i2 * 37) + 5) * 53) + getDomain().hashCode();
            int i3 = hashCode2;
            if (getCatCount() > 0) {
                i3 = (((hashCode2 * 37) + 6) * 53) + getCatList().hashCode();
            }
            int i4 = i3;
            if (getSectcatCount() > 0) {
                i4 = (((i3 * 37) + 7) * 53) + getSectcatList().hashCode();
            }
            int i5 = i4;
            if (getPagecatCount() > 0) {
                i5 = (((i4 * 37) + 8) * 53) + getPagecatList().hashCode();
            }
            int hashBoolean = (((((((((((((((((((((((((((((((i5 * 37) + 9) * 53) + this.cattax_) * 37) + 10) * 53) + Internal.hashBoolean(getPrivpolicy())) * 37) + 11) * 53) + getKeywords().hashCode()) * 37) + 12) * 53) + getBundle().hashCode()) * 37) + 13) * 53) + getStoreid().hashCode()) * 37) + 14) * 53) + getStoreurl().hashCode()) * 37) + 15) * 53) + getVer().hashCode()) * 37) + 16) * 53) + Internal.hashBoolean(getPaid());
            int i6 = hashBoolean;
            if (hasExt()) {
                i6 = (((hashBoolean * 37) + 18) * 53) + getExt().hashCode();
            }
            int i7 = i6;
            if (getExtProtoCount() > 0) {
                i7 = (((i6 * 37) + 17) * 53) + getExtProtoList().hashCode();
            }
            int hashCode3 = (i7 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32951x78e9d10a.ensureFieldAccessorsInitialized(App.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new App();
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
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            if (this.pub_ != null) {
                codedOutputStream.writeMessage(3, getPub());
            }
            if (this.content_ != null) {
                codedOutputStream.writeMessage(4, getContent());
            }
            if (!getDomainBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.domain_);
            }
            for (int i = 0; i < this.cat_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.cat_.getRaw(i));
            }
            for (int i2 = 0; i2 < this.sectcat_.size(); i2++) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.sectcat_.getRaw(i2));
            }
            for (int i3 = 0; i3 < this.pagecat_.size(); i3++) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.pagecat_.getRaw(i3));
            }
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                codedOutputStream.writeEnum(9, this.cattax_);
            }
            boolean z = this.privpolicy_;
            if (z) {
                codedOutputStream.writeBool(10, z);
            }
            if (!getKeywordsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.keywords_);
            }
            if (!getBundleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.bundle_);
            }
            if (!getStoreidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.storeid_);
            }
            if (!getStoreurlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.storeurl_);
            }
            if (!getVerBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 15, this.ver_);
            }
            boolean z2 = this.paid_;
            int i4 = 0;
            if (z2) {
                codedOutputStream.writeBool(16, z2);
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

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$AppOrBuilder.class */
    public interface AppOrBuilder extends MessageOrBuilder {
        String getBundle();

        ByteString getBundleBytes();

        String getCat(int i);

        ByteString getCatBytes(int i);

        int getCatCount();

        List<String> getCatList();

        CategoryTaxonomy getCattax();

        int getCattaxValue();

        App.Content getContent();

        App.ContentOrBuilder getContentOrBuilder();

        String getDomain();

        ByteString getDomainBytes();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getId();

        ByteString getIdBytes();

        String getKeywords();

        ByteString getKeywordsBytes();

        String getName();

        ByteString getNameBytes();

        String getPagecat(int i);

        ByteString getPagecatBytes(int i);

        int getPagecatCount();

        List<String> getPagecatList();

        boolean getPaid();

        boolean getPrivpolicy();

        App.Publisher getPub();

        App.PublisherOrBuilder getPubOrBuilder();

        String getSectcat(int i);

        ByteString getSectcatBytes(int i);

        int getSectcatCount();

        List<String> getSectcatList();

        String getStoreid();

        ByteString getStoreidBytes();

        String getStoreurl();

        ByteString getStoreurlBytes();

        String getVer();

        ByteString getVerBytes();

        boolean hasContent();

        boolean hasExt();

        boolean hasPub();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ContextOrBuilder {
        private SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> appBuilder_;
        private App app_;
        private int bitField0_;
        private SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> deviceBuilder_;
        private Device device_;
        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> regsBuilder_;
        private Regs regs_;
        private SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> restrictionsBuilder_;
        private Restrictions restrictions_;
        private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> userBuilder_;
        private User user_;

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

        private SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> getAppFieldBuilder() {
            if (this.appBuilder_ == null) {
                this.appBuilder_ = new SingleFieldBuilderV3<>(getApp(), getParentForChildren(), isClean());
                this.app_ = null;
            }
            return this.appBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_descriptor;
        }

        private SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> getDeviceFieldBuilder() {
            if (this.deviceBuilder_ == null) {
                this.deviceBuilder_ = new SingleFieldBuilderV3<>(getDevice(), getParentForChildren(), isClean());
                this.device_ = null;
            }
            return this.deviceBuilder_;
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

        private SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> getRegsFieldBuilder() {
            if (this.regsBuilder_ == null) {
                this.regsBuilder_ = new SingleFieldBuilderV3<>(getRegs(), getParentForChildren(), isClean());
                this.regs_ = null;
            }
            return this.regsBuilder_;
        }

        private SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> getRestrictionsFieldBuilder() {
            if (this.restrictionsBuilder_ == null) {
                this.restrictionsBuilder_ = new SingleFieldBuilderV3<>(getRestrictions(), getParentForChildren(), isClean());
                this.restrictions_ = null;
            }
            return this.restrictionsBuilder_;
        }

        private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> getUserFieldBuilder() {
            if (this.userBuilder_ == null) {
                this.userBuilder_ = new SingleFieldBuilderV3<>(getUser(), getParentForChildren(), isClean());
                this.user_ = null;
            }
            return this.userBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (Context.alwaysUseFieldBuilders) {
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
        public final Context build() {
            Context buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Context buildPartial() {
            Context context = new Context(this);
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                context.app_ = this.app_;
            } else {
                context.app_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV32 = this.deviceBuilder_;
            if (singleFieldBuilderV32 == null) {
                context.device_ = this.device_;
            } else {
                context.device_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV33 = this.regsBuilder_;
            if (singleFieldBuilderV33 == null) {
                context.regs_ = this.regs_;
            } else {
                context.regs_ = singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV34 = this.restrictionsBuilder_;
            if (singleFieldBuilderV34 == null) {
                context.restrictions_ = this.restrictions_;
            } else {
                context.restrictions_ = singleFieldBuilderV34.build();
            }
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV35 = this.userBuilder_;
            if (singleFieldBuilderV35 == null) {
                context.user_ = this.user_;
            } else {
                context.user_ = singleFieldBuilderV35.build();
            }
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV36 = this.extBuilder_;
            if (singleFieldBuilderV36 == null) {
                context.ext_ = this.ext_;
            } else {
                context.ext_ = singleFieldBuilderV36.build();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -2;
                }
                context.extProto_ = this.extProto_;
            } else {
                context.extProto_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return context;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            if (this.appBuilder_ == null) {
                this.app_ = null;
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
            }
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            if (this.restrictionsBuilder_ == null) {
                this.restrictions_ = null;
            } else {
                this.restrictions_ = null;
                this.restrictionsBuilder_ = null;
            }
            if (this.userBuilder_ == null) {
                this.user_ = null;
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
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

        public final Builder clearApp() {
            if (this.appBuilder_ == null) {
                this.app_ = null;
                onChanged();
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            return this;
        }

        public final Builder clearDevice() {
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
                onChanged();
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
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

        public final Builder clearRegs() {
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
                onChanged();
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            return this;
        }

        public final Builder clearRestrictions() {
            if (this.restrictionsBuilder_ == null) {
                this.restrictions_ = null;
                onChanged();
            } else {
                this.restrictions_ = null;
                this.restrictionsBuilder_ = null;
            }
            return this;
        }

        public final Builder clearUser() {
            if (this.userBuilder_ == null) {
                this.user_ = null;
                onChanged();
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final App getApp() {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                App app = this.app_;
                App app2 = app;
                if (app == null) {
                    app2 = App.getDefaultInstance();
                }
                return app2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final App.Builder getAppBuilder() {
            onChanged();
            return getAppFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final AppOrBuilder getAppOrBuilder() {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            App app = this.app_;
            App app2 = app;
            if (app == null) {
                app2 = App.getDefaultInstance();
            }
            return app2;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Context getDefaultInstanceForType() {
            return Context.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_descriptor;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final Device getDevice() {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Device device = this.device_;
                Device device2 = device;
                if (device == null) {
                    device2 = Device.getDefaultInstance();
                }
                return device2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final Device.Builder getDeviceBuilder() {
            onChanged();
            return getDeviceFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final DeviceOrBuilder getDeviceOrBuilder() {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Device device = this.device_;
            Device device2 = device;
            if (device == null) {
                device2 = Device.getDefaultInstance();
            }
            return device2;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final Struct getExt() {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final Struct.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final int getExtProtoCount() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final List<Any> getExtProtoList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final Regs getRegs() {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Regs regs = this.regs_;
                Regs regs2 = regs;
                if (regs == null) {
                    regs2 = Regs.getDefaultInstance();
                }
                return regs2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final Regs.Builder getRegsBuilder() {
            onChanged();
            return getRegsFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final RegsOrBuilder getRegsOrBuilder() {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Regs regs = this.regs_;
            Regs regs2 = regs;
            if (regs == null) {
                regs2 = Regs.getDefaultInstance();
            }
            return regs2;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final Restrictions getRestrictions() {
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV3 = this.restrictionsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Restrictions restrictions = this.restrictions_;
                Restrictions restrictions2 = restrictions;
                if (restrictions == null) {
                    restrictions2 = Restrictions.getDefaultInstance();
                }
                return restrictions2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final Restrictions.Builder getRestrictionsBuilder() {
            onChanged();
            return getRestrictionsFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final RestrictionsOrBuilder getRestrictionsOrBuilder() {
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV3 = this.restrictionsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Restrictions restrictions = this.restrictions_;
            Restrictions restrictions2 = restrictions;
            if (restrictions == null) {
                restrictions2 = Restrictions.getDefaultInstance();
            }
            return restrictions2;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final User getUser() {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                User user = this.user_;
                User user2 = user;
                if (user == null) {
                    user2 = User.getDefaultInstance();
                }
                return user2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final User.Builder getUserBuilder() {
            onChanged();
            return getUserFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final UserOrBuilder getUserOrBuilder() {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            User user = this.user_;
            User user2 = user;
            if (user == null) {
                user2 = User.getDefaultInstance();
            }
            return user2;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasApp() {
            return (this.appBuilder_ == null && this.app_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasDevice() {
            return (this.deviceBuilder_ == null && this.device_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasRegs() {
            return (this.regsBuilder_ == null && this.regs_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasRestrictions() {
            return (this.restrictionsBuilder_ == null && this.restrictions_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
        public final boolean hasUser() {
            return (this.userBuilder_ == null && this.user_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32965xdcb25d8c.ensureFieldAccessorsInitialized(Context.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeApp(App app) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                App app2 = this.app_;
                if (app2 != null) {
                    this.app_ = App.newBuilder(app2).mergeFrom(app).buildPartial();
                } else {
                    this.app_ = app;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(app);
            }
            return this;
        }

        public final Builder mergeDevice(Device device) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Device device2 = this.device_;
                if (device2 != null) {
                    this.device_ = Device.newBuilder(device2).mergeFrom(device).buildPartial();
                } else {
                    this.device_ = device;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(device);
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
        public final com.explorestack.protobuf.adcom.Context.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.access$30100()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                com.explorestack.protobuf.adcom.Context r0 = (com.explorestack.protobuf.adcom.Context) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L1a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.adcom.Context$Builder r0 = r0.mergeFrom(r1)
            L1a:
                r0 = r4
                return r0
            L1c:
                r5 = move-exception
                r0 = r7
                r6 = r0
                goto L31
            L22:
                r5 = move-exception
                r0 = r5
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                com.explorestack.protobuf.adcom.Context r0 = (com.explorestack.protobuf.adcom.Context) r0     // Catch: java.lang.Throwable -> L1c
                r6 = r0
                r0 = r5
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                throw r0     // Catch: java.lang.Throwable -> L30
            L30:
                r5 = move-exception
            L31:
                r0 = r6
                if (r0 == 0) goto L3b
                r0 = r4
                r1 = r6
                com.explorestack.protobuf.adcom.Context$Builder r0 = r0.mergeFrom(r1)
            L3b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Context) {
                return mergeFrom((Context) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Context context) {
            if (context == Context.getDefaultInstance()) {
                return this;
            }
            if (context.hasApp()) {
                mergeApp(context.getApp());
            }
            if (context.hasDevice()) {
                mergeDevice(context.getDevice());
            }
            if (context.hasRegs()) {
                mergeRegs(context.getRegs());
            }
            if (context.hasRestrictions()) {
                mergeRestrictions(context.getRestrictions());
            }
            if (context.hasUser()) {
                mergeUser(context.getUser());
            }
            if (context.hasExt()) {
                mergeExt(context.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!context.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = context.extProto_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(context.extProto_);
                    }
                    onChanged();
                }
            } else if (!context.extProto_.isEmpty()) {
                if (this.extProtoBuilder_.isEmpty()) {
                    this.extProtoBuilder_.dispose();
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    this.extProtoBuilder_ = null;
                    this.extProto_ = context.extProto_;
                    this.bitField0_ &= -2;
                    if (Context.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                    }
                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.extProtoBuilder_.addAllMessages(context.extProto_);
                }
            }
            mergeUnknownFields(context.unknownFields);
            onChanged();
            return this;
        }

        public final Builder mergeRegs(Regs regs) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Regs regs2 = this.regs_;
                if (regs2 != null) {
                    this.regs_ = Regs.newBuilder(regs2).mergeFrom(regs).buildPartial();
                } else {
                    this.regs_ = regs;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(regs);
            }
            return this;
        }

        public final Builder mergeRestrictions(Restrictions restrictions) {
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV3 = this.restrictionsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Restrictions restrictions2 = this.restrictions_;
                if (restrictions2 != null) {
                    this.restrictions_ = Restrictions.newBuilder(restrictions2).mergeFrom(restrictions).buildPartial();
                } else {
                    this.restrictions_ = restrictions;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(restrictions);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder mergeUser(User user) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                User user2 = this.user_;
                if (user2 != null) {
                    this.user_ = User.newBuilder(user2).mergeFrom(user).buildPartial();
                } else {
                    this.user_ = user;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(user);
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

        public final Builder setApp(App.Builder builder) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.app_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setApp(App app) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(app);
                this.app_ = app;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(app);
            }
            return this;
        }

        public final Builder setDevice(Device.Builder builder) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.device_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setDevice(Device device) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(device);
                this.device_ = device;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(device);
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

        public final Builder setRegs(Regs.Builder builder) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.regs_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setRegs(Regs regs) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(regs);
                this.regs_ = regs;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(regs);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setRestrictions(Restrictions.Builder builder) {
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV3 = this.restrictionsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.restrictions_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setRestrictions(Restrictions restrictions) {
            SingleFieldBuilderV3<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> singleFieldBuilderV3 = this.restrictionsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(restrictions);
                this.restrictions_ = restrictions;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(restrictions);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setUser(User.Builder builder) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.user_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setUser(User user) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(user);
                this.user_ = user;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(user);
            }
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Data.class */
    public static final class Data extends GeneratedMessageV3 implements DataOrBuilder {
        public static final int EXT_FIELD_NUMBER = 5;
        public static final int EXT_PROTO_FIELD_NUMBER = 4;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int SEGMENT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private List<Segment> segment_;
        private static final Data DEFAULT_INSTANCE = new Data();
        private static final Parser<Data> PARSER = new AbstractParser<Data>() { // from class: com.explorestack.protobuf.adcom.Context.Data.1
            @Override // com.explorestack.protobuf.Parser
            public final Data parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Data(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Data$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DataOrBuilder {
            private int bitField0_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object id_;
            private Object name_;
            private RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> segmentBuilder_;
            private List<Segment> segment_;

            private Builder() {
                this.id_ = "";
                this.name_ = "";
                this.segment_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.id_ = "";
                this.name_ = "";
                this.segment_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureSegmentIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.segment_ = new ArrayList(this.segment_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32954x922b3cc5;
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

            private RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> getSegmentFieldBuilder() {
                if (this.segmentBuilder_ == null) {
                    List<Segment> list = this.segment_;
                    boolean z = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z = false;
                    }
                    this.segmentBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                    this.segment_ = null;
                }
                return this.segmentBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (Data.alwaysUseFieldBuilders) {
                    getSegmentFieldBuilder();
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

            public final Builder addAllSegment(Iterable<? extends Segment> iterable) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureSegmentIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.segment_);
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

            public final Builder addSegment(int i, Segment.Builder builder) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureSegmentIsMutable();
                    this.segment_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addSegment(int i, Segment segment) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(segment);
                    ensureSegmentIsMutable();
                    this.segment_.add(i, segment);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, segment);
                }
                return this;
            }

            public final Builder addSegment(Segment.Builder builder) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureSegmentIsMutable();
                    this.segment_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addSegment(Segment segment) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(segment);
                    ensureSegmentIsMutable();
                    this.segment_.add(segment);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(segment);
                }
                return this;
            }

            public final Segment.Builder addSegmentBuilder() {
                return getSegmentFieldBuilder().addBuilder(Segment.getDefaultInstance());
            }

            public final Segment.Builder addSegmentBuilder(int i) {
                return getSegmentFieldBuilder().addBuilder(i, Segment.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Data build() {
                Data buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Data buildPartial() {
                Data data = new Data(this);
                data.id_ = this.id_;
                data.name_ = this.name_;
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.segment_ = Collections.unmodifiableList(this.segment_);
                        this.bitField0_ &= -2;
                    }
                    data.segment_ = this.segment_;
                } else {
                    data.segment_ = repeatedFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    data.ext_ = this.ext_;
                } else {
                    data.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    data.extProto_ = this.extProto_;
                } else {
                    data.extProto_ = repeatedFieldBuilderV32.build();
                }
                onBuilt();
                return data;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.id_ = "";
                this.name_ = "";
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.segment_ = Collections.emptyList();
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
                this.id_ = Data.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.name_ = Data.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearSegment() {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.segment_ = Collections.emptyList();
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

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Data getDefaultInstanceForType() {
                return Data.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.f32954x922b3cc5;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final Segment getSegment(int i) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                return repeatedFieldBuilderV3 == null ? this.segment_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Segment.Builder getSegmentBuilder(int i) {
                return getSegmentFieldBuilder().getBuilder(i);
            }

            public final List<Segment.Builder> getSegmentBuilderList() {
                return getSegmentFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final int getSegmentCount() {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                return repeatedFieldBuilderV3 == null ? this.segment_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final List<Segment> getSegmentList() {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.segment_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final SegmentOrBuilder getSegmentOrBuilder(int i) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                return repeatedFieldBuilderV3 == null ? this.segment_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final List<? extends SegmentOrBuilder> getSegmentOrBuilderList() {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.segment_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32955x7d47ce43.ensureFieldAccessorsInitialized(Data.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.Data.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Data.access$15300()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                    com.explorestack.protobuf.adcom.Context$Data r0 = (com.explorestack.protobuf.adcom.Context.Data) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Data$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L37
                L24:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$Data r0 = (com.explorestack.protobuf.adcom.Context.Data) r0     // Catch: java.lang.Throwable -> L1c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L32
                    throw r0     // Catch: java.lang.Throwable -> L32
                L32:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L37:
                    r0 = r6
                    if (r0 == 0) goto L41
                    r0 = r4
                    r1 = r6
                    com.explorestack.protobuf.adcom.Context$Data$Builder r0 = r0.mergeFrom(r1)
                L41:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Data.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Data$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Data) {
                    return mergeFrom((Data) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Data data) {
                if (data == Data.getDefaultInstance()) {
                    return this;
                }
                if (!data.getId().isEmpty()) {
                    this.id_ = data.id_;
                    onChanged();
                }
                if (!data.getName().isEmpty()) {
                    this.name_ = data.name_;
                    onChanged();
                }
                if (this.segmentBuilder_ == null) {
                    if (!data.segment_.isEmpty()) {
                        if (this.segment_.isEmpty()) {
                            this.segment_ = data.segment_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSegmentIsMutable();
                            this.segment_.addAll(data.segment_);
                        }
                        onChanged();
                    }
                } else if (!data.segment_.isEmpty()) {
                    if (this.segmentBuilder_.isEmpty()) {
                        this.segmentBuilder_.dispose();
                        this.segmentBuilder_ = null;
                        this.segment_ = data.segment_;
                        this.bitField0_ &= -2;
                        this.segmentBuilder_ = Data.alwaysUseFieldBuilders ? getSegmentFieldBuilder() : null;
                    } else {
                        this.segmentBuilder_.addAllMessages(data.segment_);
                    }
                }
                if (data.hasExt()) {
                    mergeExt(data.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!data.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = data.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(data.extProto_);
                        }
                        onChanged();
                    }
                } else if (!data.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = data.extProto_;
                        this.bitField0_ &= -3;
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        if (Data.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(data.extProto_);
                    }
                }
                mergeUnknownFields(data.unknownFields);
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

            public final Builder removeSegment(int i) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureSegmentIsMutable();
                    this.segment_.remove(i);
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

            public final Builder setId(String str) {
                Objects.requireNonNull(str);
                this.id_ = str;
                onChanged();
                return this;
            }

            public final Builder setIdBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Data.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                Objects.requireNonNull(str);
                this.name_ = str;
                onChanged();
                return this;
            }

            public final Builder setNameBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Data.checkByteStringIsUtf8(byteString);
                this.name_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSegment(int i, Segment.Builder builder) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureSegmentIsMutable();
                    this.segment_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setSegment(int i, Segment segment) {
                RepeatedFieldBuilderV3<Segment, Segment.Builder, SegmentOrBuilder> repeatedFieldBuilderV3 = this.segmentBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(segment);
                    ensureSegmentIsMutable();
                    this.segment_.set(i, segment);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, segment);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Data$Segment.class */
        public static final class Segment extends GeneratedMessageV3 implements SegmentOrBuilder {
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int NAME_FIELD_NUMBER = 2;
            public static final int VALUE_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private volatile Object value_;
            private static final Segment DEFAULT_INSTANCE = new Segment();
            private static final Parser<Segment> PARSER = new AbstractParser<Segment>() { // from class: com.explorestack.protobuf.adcom.Context.Data.Segment.1
                @Override // com.explorestack.protobuf.Parser
                public final Segment parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Segment(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Data$Segment$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SegmentOrBuilder {
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private Object name_;
                private Object value_;

                private Builder() {
                    this.id_ = "";
                    this.name_ = "";
                    this.value_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
                    this.name_ = "";
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
                    return AdcomProto.f32952x35478b71;
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
                    if (Segment.alwaysUseFieldBuilders) {
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
                public final Segment build() {
                    Segment buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Segment buildPartial() {
                    Segment segment = new Segment(this);
                    segment.id_ = this.id_;
                    segment.name_ = this.name_;
                    segment.value_ = this.value_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        segment.ext_ = this.ext_;
                    } else {
                        segment.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        segment.extProto_ = this.extProto_;
                    } else {
                        segment.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return segment;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.name_ = "";
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

                public final Builder clearId() {
                    this.id_ = Segment.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public final Builder clearName() {
                    this.name_ = Segment.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearValue() {
                    this.value_ = Segment.getDefaultInstance().getValue();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Segment getDefaultInstanceForType() {
                    return Segment.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.f32952x35478b71;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final Struct getExt() {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }
                    return singleFieldBuilderV3.getMessage();
                }

                public final Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final String getValue() {
                    Object obj = this.value_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.value_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.f32953xbc30b0ef.ensureFieldAccessorsInitialized(Segment.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Context.Data.Segment.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Data.Segment.access$13600()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                        com.explorestack.protobuf.adcom.Context$Data$Segment r0 = (com.explorestack.protobuf.adcom.Context.Data.Segment) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L1a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Context$Data$Segment$Builder r0 = r0.mergeFrom(r1)
                    L1a:
                        r0 = r4
                        return r0
                    L1c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        r0 = r5
                        r7 = r0
                        goto L37
                    L24:
                        r6 = move-exception
                        r0 = r6
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                        com.explorestack.protobuf.adcom.Context$Data$Segment r0 = (com.explorestack.protobuf.adcom.Context.Data.Segment) r0     // Catch: java.lang.Throwable -> L1c
                        r5 = r0
                        r0 = r6
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L32
                        throw r0     // Catch: java.lang.Throwable -> L32
                    L32:
                        r6 = move-exception
                        r0 = r6
                        r7 = r0
                        r0 = r5
                        r6 = r0
                    L37:
                        r0 = r6
                        if (r0 == 0) goto L41
                        r0 = r4
                        r1 = r6
                        com.explorestack.protobuf.adcom.Context$Data$Segment$Builder r0 = r0.mergeFrom(r1)
                    L41:
                        r0 = r7
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Data.Segment.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Data$Segment$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Segment) {
                        return mergeFrom((Segment) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Segment segment) {
                    if (segment == Segment.getDefaultInstance()) {
                        return this;
                    }
                    if (!segment.getId().isEmpty()) {
                        this.id_ = segment.id_;
                        onChanged();
                    }
                    if (!segment.getName().isEmpty()) {
                        this.name_ = segment.name_;
                        onChanged();
                    }
                    if (!segment.getValue().isEmpty()) {
                        this.value_ = segment.value_;
                        onChanged();
                    }
                    if (segment.hasExt()) {
                        mergeExt(segment.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!segment.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = segment.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(segment.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!segment.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = segment.extProto_;
                            this.bitField0_ &= -2;
                            if (Segment.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(segment.extProto_);
                        }
                    }
                    mergeUnknownFields(segment.unknownFields);
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

                public final Builder setId(String str) {
                    Objects.requireNonNull(str);
                    this.id_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setIdBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Segment.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setName(String str) {
                    Objects.requireNonNull(str);
                    this.name_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setNameBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Segment.checkByteStringIsUtf8(byteString);
                    this.name_ = byteString;
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
                    Segment.checkByteStringIsUtf8(byteString);
                    this.value_ = byteString;
                    onChanged();
                    return this;
                }
            }

            private Segment() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.name_ = "";
                this.value_ = "";
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Segment(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    boolean z3 = z2;
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.id_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.name_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 26) {
                                    this.value_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 34) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.extProto_ = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    z2 = z4;
                                } else if (readTag == 42) {
                                    Struct.Builder builder = null;
                                    Struct struct = this.ext_;
                                    builder = struct != null ? struct.toBuilder() : builder;
                                    boolean z7 = z2;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    boolean z8 = z2;
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        boolean z9 = z2;
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
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if (z2 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }

            private Segment(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Segment getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32952x35478b71;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Segment segment) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(segment);
            }

            public static Segment parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Segment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Segment parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Segment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Segment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Segment parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Segment parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Segment parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Segment parseFrom(InputStream inputStream) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Segment parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Segment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Segment parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Segment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Segment parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Segment> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Segment)) {
                    return super.equals(obj);
                }
                Segment segment = (Segment) obj;
                if (!getId().equals(segment.getId()) || !getName().equals(segment.getName()) || !getValue().equals(segment.getValue()) || hasExt() != segment.hasExt()) {
                    return false;
                }
                return (!hasExt() || getExt().equals(segment.getExt())) && getExtProtoList().equals(segment.getExtProtoList()) && this.unknownFields.equals(segment.unknownFields);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Segment getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Segment> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                int i2 = computeStringSize;
                if (!getNameBytes().isEmpty()) {
                    i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.name_);
                }
                int i3 = i2;
                int i4 = 0;
                if (!getValueBytes().isEmpty()) {
                    i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.value_);
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final String getValue() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.value_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final ByteString getValueBytes() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.value_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getValue().hashCode();
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
                return AdcomProto.f32953xbc30b0ef.ensureFieldAccessorsInitialized(Segment.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder newBuilderForType() {
                return newBuilder();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new Segment();
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
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                }
                if (!getValueBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.value_);
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder.class */
        public interface SegmentOrBuilder extends MessageOrBuilder {
            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            String getName();

            ByteString getNameBytes();

            String getValue();

            ByteString getValueBytes();

            boolean hasExt();
        }

        private Data() {
            this.memoizedIsInitialized = (byte) (-1);
            this.id_ = "";
            this.name_ = "";
            this.segment_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Data(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.id_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                this.name_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                boolean z4 = z2;
                                if (!(z2 & true)) {
                                    boolean z5 = z2;
                                    boolean z6 = z2;
                                    this.segment_ = new ArrayList();
                                    z4 = z2 | true;
                                }
                                this.segment_.add(codedInputStream.readMessage(Segment.parser(), extensionRegistryLite));
                                z2 = z4;
                            } else if (readTag == 34) {
                                boolean z7 = z2;
                                if (!(z2 & true)) {
                                    boolean z8 = z2;
                                    boolean z9 = z2;
                                    this.extProto_ = new ArrayList();
                                    z7 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z7;
                            } else if (readTag == 42) {
                                Struct.Builder builder = null;
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z10 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z11 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z12 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.segment_ = Collections.unmodifiableList(this.segment_);
                    }
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.segment_ = Collections.unmodifiableList(this.segment_);
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private Data(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Data getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.f32954x922b3cc5;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Data data) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(data);
        }

        public static Data parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Data parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Data parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Data parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Data parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Data parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Data parseFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Data parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Data parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Data parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Data parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Data parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Data> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Data)) {
                return super.equals(obj);
            }
            Data data = (Data) obj;
            if (!getId().equals(data.getId()) || !getName().equals(data.getName()) || !getSegmentList().equals(data.getSegmentList()) || hasExt() != data.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(data.getExt())) && getExtProtoList().equals(data.getExtProtoList()) && this.unknownFields.equals(data.unknownFields);
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Data getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Data> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final Segment getSegment(int i) {
            return this.segment_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final int getSegmentCount() {
            return this.segment_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final List<Segment> getSegmentList() {
            return this.segment_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final SegmentOrBuilder getSegmentOrBuilder(int i) {
            return this.segment_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final List<? extends SegmentOrBuilder> getSegmentOrBuilderList() {
            return this.segment_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i;
            int i2;
            int i3 = this.memoizedSize;
            if (i3 != -1) {
                return i3;
            }
            int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
            int i4 = computeStringSize;
            if (!getNameBytes().isEmpty()) {
                i4 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            int i5 = 0;
            while (true) {
                i = i4;
                if (i5 < this.segment_.size()) {
                    i4 += CodedOutputStream.computeMessageSize(3, this.segment_.get(i5));
                    i5++;
                }
            }
            for (i2 = 0; i2 < this.extProto_.size(); i2++) {
                i += CodedOutputStream.computeMessageSize(4, this.extProto_.get(i2));
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

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode();
            int i = hashCode;
            if (getSegmentCount() > 0) {
                i = (((hashCode * 37) + 3) * 53) + getSegmentList().hashCode();
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
            return AdcomProto.f32955x7d47ce43.ensureFieldAccessorsInitialized(Data.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Data();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            int i2 = 0;
            while (true) {
                if (i2 < this.segment_.size()) {
                    codedOutputStream.writeMessage(3, this.segment_.get(i2));
                    i2++;
                }
            }
            for (i = 0; i < this.extProto_.size(); i++) {
                codedOutputStream.writeMessage(4, this.extProto_.get(i));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(5, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$DataOrBuilder.class */
    public interface DataOrBuilder extends MessageOrBuilder {
        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getId();

        ByteString getIdBytes();

        String getName();

        ByteString getNameBytes();

        Data.Segment getSegment(int i);

        int getSegmentCount();

        List<Data.Segment> getSegmentList();

        Data.SegmentOrBuilder getSegmentOrBuilder(int i);

        List<? extends Data.SegmentOrBuilder> getSegmentOrBuilderList();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Device.class */
    public static final class Device extends GeneratedMessageV3 implements DeviceOrBuilder {
        public static final int CARRIER_FIELD_NUMBER = 21;
        public static final int CONTYPE_FIELD_NUMBER = 24;
        public static final int DNT_FIELD_NUMBER = 4;
        public static final int EXT_FIELD_NUMBER = 28;
        public static final int EXT_PROTO_FIELD_NUMBER = 27;
        public static final int GEOFETCH_FIELD_NUMBER = 25;
        public static final int GEO_FIELD_NUMBER = 26;
        public static final int HWV_FIELD_NUMBER = 10;
        public static final int H_FIELD_NUMBER = 11;
        public static final int IFA_FIELD_NUMBER = 3;
        public static final int IPTR_FIELD_NUMBER = 20;
        public static final int IPV6_FIELD_NUMBER = 18;
        public static final int IP_FIELD_NUMBER = 17;
        public static final int JS_FIELD_NUMBER = 15;
        public static final int LANG_FIELD_NUMBER = 16;
        public static final int LMT_FIELD_NUMBER = 5;
        public static final int MAKE_FIELD_NUMBER = 6;
        public static final int MCCMNCSIM_FIELD_NUMBER = 23;
        public static final int MCCMNC_FIELD_NUMBER = 22;
        public static final int MODEL_FIELD_NUMBER = 7;
        public static final int OSV_FIELD_NUMBER = 9;
        public static final int OS_FIELD_NUMBER = 8;
        public static final int PPI_FIELD_NUMBER = 13;
        public static final int PXRATIO_FIELD_NUMBER = 14;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int UA_FIELD_NUMBER = 2;
        public static final int W_FIELD_NUMBER = 12;
        public static final int XFF_FIELD_NUMBER = 19;
        private static final long serialVersionUID = 0;
        private volatile Object carrier_;
        private int contype_;
        private boolean dnt_;
        private List<Any> extProto_;
        private Struct ext_;
        private Geo geo_;
        private boolean geofetch_;

        /* renamed from: h_ */
        private int f32987h_;
        private volatile Object hwv_;
        private volatile Object ifa_;
        private volatile Object ip_;
        private boolean iptr_;
        private volatile Object ipv6_;
        private boolean js_;
        private volatile Object lang_;
        private boolean lmt_;
        private volatile Object make_;
        private volatile Object mccmnc_;
        private volatile Object mccmncsim_;
        private byte memoizedIsInitialized;
        private volatile Object model_;
        private int os_;
        private volatile Object osv_;
        private int ppi_;
        private float pxratio_;
        private int type_;
        private volatile Object ua_;

        /* renamed from: w_ */
        private int f32988w_;
        private volatile Object xff_;
        private static final Device DEFAULT_INSTANCE = new Device();
        private static final Parser<Device> PARSER = new AbstractParser<Device>() { // from class: com.explorestack.protobuf.adcom.Context.Device.1
            @Override // com.explorestack.protobuf.Parser
            public final Device parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Device(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Device$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DeviceOrBuilder {
            private int bitField0_;
            private Object carrier_;
            private int contype_;
            private boolean dnt_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> geoBuilder_;
            private Geo geo_;
            private boolean geofetch_;

            /* renamed from: h_ */
            private int f32989h_;
            private Object hwv_;
            private Object ifa_;
            private Object ip_;
            private boolean iptr_;
            private Object ipv6_;
            private boolean js_;
            private Object lang_;
            private boolean lmt_;
            private Object make_;
            private Object mccmnc_;
            private Object mccmncsim_;
            private Object model_;
            private int os_;
            private Object osv_;
            private int ppi_;
            private float pxratio_;
            private int type_;
            private Object ua_;

            /* renamed from: w_ */
            private int f32990w_;
            private Object xff_;

            private Builder() {
                this.type_ = 0;
                this.ua_ = "";
                this.ifa_ = "";
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = 0;
                this.ua_ = "";
                this.ifa_ = "";
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
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
                return AdcomProto.f32956x47238659;
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

            private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> getGeoFieldBuilder() {
                if (this.geoBuilder_ == null) {
                    this.geoBuilder_ = new SingleFieldBuilderV3<>(getGeo(), getParentForChildren(), isClean());
                    this.geo_ = null;
                }
                return this.geoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (Device.alwaysUseFieldBuilders) {
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
            public final Device build() {
                Device buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Device buildPartial() {
                Device device = new Device(this);
                device.type_ = this.type_;
                device.ua_ = this.ua_;
                device.ifa_ = this.ifa_;
                device.dnt_ = this.dnt_;
                device.lmt_ = this.lmt_;
                device.make_ = this.make_;
                device.model_ = this.model_;
                device.os_ = this.os_;
                device.osv_ = this.osv_;
                device.hwv_ = this.hwv_;
                device.f32987h_ = this.f32989h_;
                device.f32988w_ = this.f32990w_;
                device.ppi_ = this.ppi_;
                device.pxratio_ = this.pxratio_;
                device.js_ = this.js_;
                device.lang_ = this.lang_;
                device.ip_ = this.ip_;
                device.ipv6_ = this.ipv6_;
                device.xff_ = this.xff_;
                device.iptr_ = this.iptr_;
                device.carrier_ = this.carrier_;
                device.mccmnc_ = this.mccmnc_;
                device.mccmncsim_ = this.mccmncsim_;
                device.contype_ = this.contype_;
                device.geofetch_ = this.geofetch_;
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    device.geo_ = this.geo_;
                } else {
                    device.geo_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                if (singleFieldBuilderV32 == null) {
                    device.ext_ = this.ext_;
                } else {
                    device.ext_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    device.extProto_ = this.extProto_;
                } else {
                    device.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return device;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.type_ = 0;
                this.ua_ = "";
                this.ifa_ = "";
                this.dnt_ = false;
                this.lmt_ = false;
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.f32989h_ = 0;
                this.f32990w_ = 0;
                this.ppi_ = 0;
                this.pxratio_ = BitmapDescriptorFactory.HUE_RED;
                this.js_ = false;
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.iptr_ = false;
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
                this.geofetch_ = false;
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
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

            public final Builder clearCarrier() {
                this.carrier_ = Device.getDefaultInstance().getCarrier();
                onChanged();
                return this;
            }

            public final Builder clearContype() {
                this.contype_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearDnt() {
                this.dnt_ = false;
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

            public final Builder clearGeo() {
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                    onChanged();
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                return this;
            }

            public final Builder clearGeofetch() {
                this.geofetch_ = false;
                onChanged();
                return this;
            }

            public final Builder clearH() {
                this.f32989h_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearHwv() {
                this.hwv_ = Device.getDefaultInstance().getHwv();
                onChanged();
                return this;
            }

            public final Builder clearIfa() {
                this.ifa_ = Device.getDefaultInstance().getIfa();
                onChanged();
                return this;
            }

            public final Builder clearIp() {
                this.ip_ = Device.getDefaultInstance().getIp();
                onChanged();
                return this;
            }

            public final Builder clearIptr() {
                this.iptr_ = false;
                onChanged();
                return this;
            }

            public final Builder clearIpv6() {
                this.ipv6_ = Device.getDefaultInstance().getIpv6();
                onChanged();
                return this;
            }

            public final Builder clearJs() {
                this.js_ = false;
                onChanged();
                return this;
            }

            public final Builder clearLang() {
                this.lang_ = Device.getDefaultInstance().getLang();
                onChanged();
                return this;
            }

            public final Builder clearLmt() {
                this.lmt_ = false;
                onChanged();
                return this;
            }

            public final Builder clearMake() {
                this.make_ = Device.getDefaultInstance().getMake();
                onChanged();
                return this;
            }

            public final Builder clearMccmnc() {
                this.mccmnc_ = Device.getDefaultInstance().getMccmnc();
                onChanged();
                return this;
            }

            public final Builder clearMccmncsim() {
                this.mccmncsim_ = Device.getDefaultInstance().getMccmncsim();
                onChanged();
                return this;
            }

            public final Builder clearModel() {
                this.model_ = Device.getDefaultInstance().getModel();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearOs() {
                this.os_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearOsv() {
                this.osv_ = Device.getDefaultInstance().getOsv();
                onChanged();
                return this;
            }

            public final Builder clearPpi() {
                this.ppi_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPxratio() {
                this.pxratio_ = BitmapDescriptorFactory.HUE_RED;
                onChanged();
                return this;
            }

            public final Builder clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearUa() {
                this.ua_ = Device.getDefaultInstance().getUa();
                onChanged();
                return this;
            }

            public final Builder clearW() {
                this.f32990w_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearXff() {
                this.xff_ = Device.getDefaultInstance().getXff();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getCarrier() {
                Object obj = this.carrier_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.carrier_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getCarrierBytes() {
                Object obj = this.carrier_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.carrier_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ConnectionType getContype() {
                ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
                ConnectionType connectionType = valueOf;
                if (valueOf == null) {
                    connectionType = ConnectionType.UNRECOGNIZED;
                }
                return connectionType;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getContypeValue() {
                return this.contype_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Device getDefaultInstanceForType() {
                return Device.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.f32956x47238659;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean getDnt() {
                return this.dnt_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final Geo getGeo() {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Geo geo = this.geo_;
                    Geo geo2 = geo;
                    if (geo == null) {
                        geo2 = Geo.getDefaultInstance();
                    }
                    return geo2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Geo.Builder getGeoBuilder() {
                onChanged();
                return getGeoFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final GeoOrBuilder getGeoOrBuilder() {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Geo geo = this.geo_;
                Geo geo2 = geo;
                if (geo == null) {
                    geo2 = Geo.getDefaultInstance();
                }
                return geo2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean getGeofetch() {
                return this.geofetch_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getH() {
                return this.f32989h_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getHwv() {
                Object obj = this.hwv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.hwv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getHwvBytes() {
                Object obj = this.hwv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hwv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getIfa() {
                Object obj = this.ifa_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ifa_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getIfaBytes() {
                Object obj = this.ifa_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ifa_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getIp() {
                Object obj = this.ip_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ip_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getIpBytes() {
                Object obj = this.ip_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ip_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean getIptr() {
                return this.iptr_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getIpv6() {
                Object obj = this.ipv6_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ipv6_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getIpv6Bytes() {
                Object obj = this.ipv6_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipv6_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean getJs() {
                return this.js_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getLang() {
                Object obj = this.lang_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.lang_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getLangBytes() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lang_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean getLmt() {
                return this.lmt_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getMake() {
                Object obj = this.make_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.make_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getMakeBytes() {
                Object obj = this.make_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.make_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getMccmnc() {
                Object obj = this.mccmnc_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.mccmnc_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getMccmncBytes() {
                Object obj = this.mccmnc_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mccmnc_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getMccmncsim() {
                Object obj = this.mccmncsim_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.mccmncsim_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getMccmncsimBytes() {
                Object obj = this.mccmncsim_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mccmncsim_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getModel() {
                Object obj = this.model_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.model_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getModelBytes() {
                Object obj = this.model_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.model_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final EnumC9867OS getOs() {
                EnumC9867OS valueOf = EnumC9867OS.valueOf(this.os_);
                EnumC9867OS enumC9867OS = valueOf;
                if (valueOf == null) {
                    enumC9867OS = EnumC9867OS.UNRECOGNIZED;
                }
                return enumC9867OS;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getOsValue() {
                return this.os_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getOsv() {
                Object obj = this.osv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.osv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getOsvBytes() {
                Object obj = this.osv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.osv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getPpi() {
                return this.ppi_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final float getPxratio() {
                return this.pxratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final DeviceType getType() {
                DeviceType valueOf = DeviceType.valueOf(this.type_);
                DeviceType deviceType = valueOf;
                if (valueOf == null) {
                    deviceType = DeviceType.UNRECOGNIZED;
                }
                return deviceType;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getUa() {
                Object obj = this.ua_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ua_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getUaBytes() {
                Object obj = this.ua_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ua_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final int getW() {
                return this.f32990w_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final String getXff() {
                Object obj = this.xff_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.xff_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final ByteString getXffBytes() {
                Object obj = this.xff_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.xff_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public final boolean hasGeo() {
                return (this.geoBuilder_ == null && this.geo_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32957xf57743d7.ensureFieldAccessorsInitialized(Device.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.Device.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Device.access$21800()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$Device r0 = (com.explorestack.protobuf.adcom.Context.Device) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Device$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L31
                L22:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$Device r0 = (com.explorestack.protobuf.adcom.Context.Device) r0     // Catch: java.lang.Throwable -> L1c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r6 = move-exception
                L31:
                    r0 = r5
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Device$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Device.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Device$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Device) {
                    return mergeFrom((Device) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Device device) {
                if (device == Device.getDefaultInstance()) {
                    return this;
                }
                if (device.type_ != 0) {
                    setTypeValue(device.getTypeValue());
                }
                if (!device.getUa().isEmpty()) {
                    this.ua_ = device.ua_;
                    onChanged();
                }
                if (!device.getIfa().isEmpty()) {
                    this.ifa_ = device.ifa_;
                    onChanged();
                }
                if (device.getDnt()) {
                    setDnt(device.getDnt());
                }
                if (device.getLmt()) {
                    setLmt(device.getLmt());
                }
                if (!device.getMake().isEmpty()) {
                    this.make_ = device.make_;
                    onChanged();
                }
                if (!device.getModel().isEmpty()) {
                    this.model_ = device.model_;
                    onChanged();
                }
                if (device.os_ != 0) {
                    setOsValue(device.getOsValue());
                }
                if (!device.getOsv().isEmpty()) {
                    this.osv_ = device.osv_;
                    onChanged();
                }
                if (!device.getHwv().isEmpty()) {
                    this.hwv_ = device.hwv_;
                    onChanged();
                }
                if (device.getH() != 0) {
                    setH(device.getH());
                }
                if (device.getW() != 0) {
                    setW(device.getW());
                }
                if (device.getPpi() != 0) {
                    setPpi(device.getPpi());
                }
                if (device.getPxratio() != BitmapDescriptorFactory.HUE_RED) {
                    setPxratio(device.getPxratio());
                }
                if (device.getJs()) {
                    setJs(device.getJs());
                }
                if (!device.getLang().isEmpty()) {
                    this.lang_ = device.lang_;
                    onChanged();
                }
                if (!device.getIp().isEmpty()) {
                    this.ip_ = device.ip_;
                    onChanged();
                }
                if (!device.getIpv6().isEmpty()) {
                    this.ipv6_ = device.ipv6_;
                    onChanged();
                }
                if (!device.getXff().isEmpty()) {
                    this.xff_ = device.xff_;
                    onChanged();
                }
                if (device.getIptr()) {
                    setIptr(device.getIptr());
                }
                if (!device.getCarrier().isEmpty()) {
                    this.carrier_ = device.carrier_;
                    onChanged();
                }
                if (!device.getMccmnc().isEmpty()) {
                    this.mccmnc_ = device.mccmnc_;
                    onChanged();
                }
                if (!device.getMccmncsim().isEmpty()) {
                    this.mccmncsim_ = device.mccmncsim_;
                    onChanged();
                }
                if (device.contype_ != 0) {
                    setContypeValue(device.getContypeValue());
                }
                if (device.getGeofetch()) {
                    setGeofetch(device.getGeofetch());
                }
                if (device.hasGeo()) {
                    mergeGeo(device.getGeo());
                }
                if (device.hasExt()) {
                    mergeExt(device.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!device.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = device.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(device.extProto_);
                        }
                        onChanged();
                    }
                } else if (!device.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = device.extProto_;
                        this.bitField0_ &= -2;
                        if (Device.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(device.extProto_);
                    }
                }
                mergeUnknownFields(device.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergeGeo(Geo geo) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Geo geo2 = this.geo_;
                    if (geo2 != null) {
                        this.geo_ = Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                    } else {
                        this.geo_ = geo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(geo);
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

            public final Builder setCarrier(String str) {
                Objects.requireNonNull(str);
                this.carrier_ = str;
                onChanged();
                return this;
            }

            public final Builder setCarrierBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.carrier_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setContype(ConnectionType connectionType) {
                Objects.requireNonNull(connectionType);
                this.contype_ = connectionType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setContypeValue(int i) {
                this.contype_ = i;
                onChanged();
                return this;
            }

            public final Builder setDnt(boolean z) {
                this.dnt_ = z;
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

            public final Builder setGeo(Geo.Builder builder) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.geo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setGeo(Geo geo) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(geo);
                    this.geo_ = geo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(geo);
                }
                return this;
            }

            public final Builder setGeofetch(boolean z) {
                this.geofetch_ = z;
                onChanged();
                return this;
            }

            public final Builder setH(int i) {
                this.f32989h_ = i;
                onChanged();
                return this;
            }

            public final Builder setHwv(String str) {
                Objects.requireNonNull(str);
                this.hwv_ = str;
                onChanged();
                return this;
            }

            public final Builder setHwvBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.hwv_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setIfa(String str) {
                Objects.requireNonNull(str);
                this.ifa_ = str;
                onChanged();
                return this;
            }

            public final Builder setIfaBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.ifa_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setIp(String str) {
                Objects.requireNonNull(str);
                this.ip_ = str;
                onChanged();
                return this;
            }

            public final Builder setIpBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.ip_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setIptr(boolean z) {
                this.iptr_ = z;
                onChanged();
                return this;
            }

            public final Builder setIpv6(String str) {
                Objects.requireNonNull(str);
                this.ipv6_ = str;
                onChanged();
                return this;
            }

            public final Builder setIpv6Bytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.ipv6_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setJs(boolean z) {
                this.js_ = z;
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
                Device.checkByteStringIsUtf8(byteString);
                this.lang_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setLmt(boolean z) {
                this.lmt_ = z;
                onChanged();
                return this;
            }

            public final Builder setMake(String str) {
                Objects.requireNonNull(str);
                this.make_ = str;
                onChanged();
                return this;
            }

            public final Builder setMakeBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.make_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setMccmnc(String str) {
                Objects.requireNonNull(str);
                this.mccmnc_ = str;
                onChanged();
                return this;
            }

            public final Builder setMccmncBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.mccmnc_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setMccmncsim(String str) {
                Objects.requireNonNull(str);
                this.mccmncsim_ = str;
                onChanged();
                return this;
            }

            public final Builder setMccmncsimBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.mccmncsim_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setModel(String str) {
                Objects.requireNonNull(str);
                this.model_ = str;
                onChanged();
                return this;
            }

            public final Builder setModelBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.model_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setOs(EnumC9867OS enumC9867OS) {
                Objects.requireNonNull(enumC9867OS);
                this.os_ = enumC9867OS.getNumber();
                onChanged();
                return this;
            }

            public final Builder setOsValue(int i) {
                this.os_ = i;
                onChanged();
                return this;
            }

            public final Builder setOsv(String str) {
                Objects.requireNonNull(str);
                this.osv_ = str;
                onChanged();
                return this;
            }

            public final Builder setOsvBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.osv_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setPpi(int i) {
                this.ppi_ = i;
                onChanged();
                return this;
            }

            public final Builder setPxratio(float f) {
                this.pxratio_ = f;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setType(DeviceType deviceType) {
                Objects.requireNonNull(deviceType);
                this.type_ = deviceType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setTypeValue(int i) {
                this.type_ = i;
                onChanged();
                return this;
            }

            public final Builder setUa(String str) {
                Objects.requireNonNull(str);
                this.ua_ = str;
                onChanged();
                return this;
            }

            public final Builder setUaBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.ua_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public final Builder setW(int i) {
                this.f32990w_ = i;
                onChanged();
                return this;
            }

            public final Builder setXff(String str) {
                Objects.requireNonNull(str);
                this.xff_ = str;
                onChanged();
                return this;
            }

            public final Builder setXffBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Device.checkByteStringIsUtf8(byteString);
                this.xff_ = byteString;
                onChanged();
                return this;
            }
        }

        private Device() {
            this.memoizedIsInitialized = (byte) (-1);
            this.type_ = 0;
            this.ua_ = "";
            this.ifa_ = "";
            this.make_ = "";
            this.model_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.hwv_ = "";
            this.lang_ = "";
            this.ip_ = "";
            this.ipv6_ = "";
            this.xff_ = "";
            this.carrier_ = "";
            this.mccmnc_ = "";
            this.mccmncsim_ = "";
            this.contype_ = 0;
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Device(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        Struct.Builder builder = null;
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.type_ = codedInputStream.readEnum();
                                continue;
                            case 18:
                                this.ua_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 26:
                                this.ifa_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 32:
                                this.dnt_ = codedInputStream.readBool();
                                continue;
                            case 40:
                                this.lmt_ = codedInputStream.readBool();
                                continue;
                            case 50:
                                this.make_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 58:
                                this.model_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 64:
                                this.os_ = codedInputStream.readEnum();
                                continue;
                            case 74:
                                this.osv_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 82:
                                this.hwv_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 88:
                                this.f32987h_ = codedInputStream.readUInt32();
                                continue;
                            case 96:
                                this.f32988w_ = codedInputStream.readUInt32();
                                continue;
                            case 104:
                                this.ppi_ = codedInputStream.readUInt32();
                                continue;
                            case 117:
                                this.pxratio_ = codedInputStream.readFloat();
                                continue;
                            case 120:
                                this.js_ = codedInputStream.readBool();
                                continue;
                            case 130:
                                this.lang_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 138:
                                this.ip_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 146:
                                this.ipv6_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 154:
                                this.xff_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 160:
                                this.iptr_ = codedInputStream.readBool();
                                continue;
                            case 170:
                                this.carrier_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 178:
                                this.mccmnc_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 186:
                                this.mccmncsim_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 192:
                                this.contype_ = codedInputStream.readEnum();
                                continue;
                            case 200:
                                this.geofetch_ = codedInputStream.readBool();
                                continue;
                            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                                Geo geo = this.geo_;
                                Geo.Builder builder2 = geo != null ? geo.toBuilder() : null;
                                boolean z4 = z2;
                                Geo geo2 = (Geo) codedInputStream.readMessage(Geo.parser(), extensionRegistryLite);
                                boolean z5 = z2;
                                this.geo_ = geo2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(geo2);
                                    boolean z6 = z2;
                                    this.geo_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 218:
                                boolean z7 = z2;
                                if (!(z2 & true)) {
                                    boolean z8 = z2;
                                    boolean z9 = z2;
                                    this.extProto_ = new ArrayList();
                                    z7 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z7;
                                continue;
                            case 226:
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z10 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z11 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z12 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private Device(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Device getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.f32956x47238659;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Device device) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(device);
        }

        public static Device parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Device parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Device parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Device parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Device parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Device parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Device parseFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Device parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Device parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Device parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Device parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Device parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Device> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Device)) {
                return super.equals(obj);
            }
            Device device = (Device) obj;
            if (this.type_ != device.type_ || !getUa().equals(device.getUa()) || !getIfa().equals(device.getIfa()) || getDnt() != device.getDnt() || getLmt() != device.getLmt() || !getMake().equals(device.getMake()) || !getModel().equals(device.getModel()) || this.os_ != device.os_ || !getOsv().equals(device.getOsv()) || !getHwv().equals(device.getHwv()) || getH() != device.getH() || getW() != device.getW() || getPpi() != device.getPpi() || Float.floatToIntBits(getPxratio()) != Float.floatToIntBits(device.getPxratio()) || getJs() != device.getJs() || !getLang().equals(device.getLang()) || !getIp().equals(device.getIp()) || !getIpv6().equals(device.getIpv6()) || !getXff().equals(device.getXff()) || getIptr() != device.getIptr() || !getCarrier().equals(device.getCarrier()) || !getMccmnc().equals(device.getMccmnc()) || !getMccmncsim().equals(device.getMccmncsim()) || this.contype_ != device.contype_ || getGeofetch() != device.getGeofetch() || hasGeo() != device.hasGeo()) {
                return false;
            }
            if ((hasGeo() && !getGeo().equals(device.getGeo())) || hasExt() != device.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(device.getExt())) && getExtProtoList().equals(device.getExtProtoList()) && this.unknownFields.equals(device.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getCarrier() {
            Object obj = this.carrier_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.carrier_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getCarrierBytes() {
            Object obj = this.carrier_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.carrier_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ConnectionType getContype() {
            ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
            ConnectionType connectionType = valueOf;
            if (valueOf == null) {
                connectionType = ConnectionType.UNRECOGNIZED;
            }
            return connectionType;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getContypeValue() {
            return this.contype_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Device getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean getDnt() {
            return this.dnt_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final Geo getGeo() {
            Geo geo = this.geo_;
            Geo geo2 = geo;
            if (geo == null) {
                geo2 = Geo.getDefaultInstance();
            }
            return geo2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final GeoOrBuilder getGeoOrBuilder() {
            return getGeo();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean getGeofetch() {
            return this.geofetch_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getH() {
            return this.f32987h_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getHwv() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.hwv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getHwvBytes() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hwv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getIfa() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ifa_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getIfaBytes() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getIp() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ip_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getIpBytes() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean getIptr() {
            return this.iptr_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getIpv6() {
            Object obj = this.ipv6_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ipv6_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getIpv6Bytes() {
            Object obj = this.ipv6_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipv6_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean getJs() {
            return this.js_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getLang() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lang_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getLangBytes() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lang_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean getLmt() {
            return this.lmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getMake() {
            Object obj = this.make_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.make_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getMakeBytes() {
            Object obj = this.make_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getMccmnc() {
            Object obj = this.mccmnc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mccmnc_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getMccmncBytes() {
            Object obj = this.mccmnc_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mccmnc_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getMccmncsim() {
            Object obj = this.mccmncsim_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mccmncsim_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getMccmncsimBytes() {
            Object obj = this.mccmncsim_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mccmncsim_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getModel() {
            Object obj = this.model_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.model_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getModelBytes() {
            Object obj = this.model_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final EnumC9867OS getOs() {
            EnumC9867OS valueOf = EnumC9867OS.valueOf(this.os_);
            EnumC9867OS enumC9867OS = valueOf;
            if (valueOf == null) {
                enumC9867OS = EnumC9867OS.UNRECOGNIZED;
            }
            return enumC9867OS;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getOsValue() {
            return this.os_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getOsv() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.osv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getOsvBytes() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Device> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getPpi() {
            return this.ppi_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final float getPxratio() {
            return this.pxratio_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.type_ != DeviceType.DEVICE_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
            int i2 = computeEnumSize;
            if (!getUaBytes().isEmpty()) {
                i2 = computeEnumSize + GeneratedMessageV3.computeStringSize(2, this.ua_);
            }
            int i3 = i2;
            if (!getIfaBytes().isEmpty()) {
                i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.ifa_);
            }
            boolean z = this.dnt_;
            int i4 = i3;
            if (z) {
                i4 = i3 + CodedOutputStream.computeBoolSize(4, z);
            }
            boolean z2 = this.lmt_;
            int i5 = i4;
            if (z2) {
                i5 = i4 + CodedOutputStream.computeBoolSize(5, z2);
            }
            int i6 = i5;
            if (!getMakeBytes().isEmpty()) {
                i6 = i5 + GeneratedMessageV3.computeStringSize(6, this.make_);
            }
            int i7 = i6;
            if (!getModelBytes().isEmpty()) {
                i7 = i6 + GeneratedMessageV3.computeStringSize(7, this.model_);
            }
            int i8 = i7;
            if (this.os_ != EnumC9867OS.OS_INVALID.getNumber()) {
                i8 = i7 + CodedOutputStream.computeEnumSize(8, this.os_);
            }
            int i9 = i8;
            if (!getOsvBytes().isEmpty()) {
                i9 = i8 + GeneratedMessageV3.computeStringSize(9, this.osv_);
            }
            int i10 = i9;
            if (!getHwvBytes().isEmpty()) {
                i10 = i9 + GeneratedMessageV3.computeStringSize(10, this.hwv_);
            }
            int i11 = this.f32987h_;
            int i12 = i10;
            if (i11 != 0) {
                i12 = i10 + CodedOutputStream.computeUInt32Size(11, i11);
            }
            int i13 = this.f32988w_;
            int i14 = i12;
            if (i13 != 0) {
                i14 = i12 + CodedOutputStream.computeUInt32Size(12, i13);
            }
            int i15 = this.ppi_;
            int i16 = i14;
            if (i15 != 0) {
                i16 = i14 + CodedOutputStream.computeUInt32Size(13, i15);
            }
            float f = this.pxratio_;
            int i17 = i16;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                i17 = i16 + CodedOutputStream.computeFloatSize(14, f);
            }
            boolean z3 = this.js_;
            int i18 = i17;
            if (z3) {
                i18 = i17 + CodedOutputStream.computeBoolSize(15, z3);
            }
            int i19 = i18;
            if (!getLangBytes().isEmpty()) {
                i19 = i18 + GeneratedMessageV3.computeStringSize(16, this.lang_);
            }
            int i20 = i19;
            if (!getIpBytes().isEmpty()) {
                i20 = i19 + GeneratedMessageV3.computeStringSize(17, this.ip_);
            }
            int i21 = i20;
            if (!getIpv6Bytes().isEmpty()) {
                i21 = i20 + GeneratedMessageV3.computeStringSize(18, this.ipv6_);
            }
            int i22 = i21;
            if (!getXffBytes().isEmpty()) {
                i22 = i21 + GeneratedMessageV3.computeStringSize(19, this.xff_);
            }
            boolean z4 = this.iptr_;
            int i23 = i22;
            if (z4) {
                i23 = i22 + CodedOutputStream.computeBoolSize(20, z4);
            }
            int i24 = i23;
            if (!getCarrierBytes().isEmpty()) {
                i24 = i23 + GeneratedMessageV3.computeStringSize(21, this.carrier_);
            }
            int i25 = i24;
            if (!getMccmncBytes().isEmpty()) {
                i25 = i24 + GeneratedMessageV3.computeStringSize(22, this.mccmnc_);
            }
            int i26 = i25;
            if (!getMccmncsimBytes().isEmpty()) {
                i26 = i25 + GeneratedMessageV3.computeStringSize(23, this.mccmncsim_);
            }
            int i27 = i26;
            if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                i27 = i26 + CodedOutputStream.computeEnumSize(24, this.contype_);
            }
            boolean z5 = this.geofetch_;
            int i28 = i27;
            if (z5) {
                i28 = i27 + CodedOutputStream.computeBoolSize(25, z5);
            }
            int i29 = i28;
            int i30 = 0;
            if (this.geo_ != null) {
                i29 = i28 + CodedOutputStream.computeMessageSize(26, getGeo());
                i30 = 0;
            }
            while (i30 < this.extProto_.size()) {
                i29 += CodedOutputStream.computeMessageSize(27, this.extProto_.get(i30));
                i30++;
            }
            int i31 = i29;
            if (this.ext_ != null) {
                i31 = i29 + CodedOutputStream.computeMessageSize(28, getExt());
            }
            int serializedSize = i31 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final DeviceType getType() {
            DeviceType valueOf = DeviceType.valueOf(this.type_);
            DeviceType deviceType = valueOf;
            if (valueOf == null) {
                deviceType = DeviceType.UNRECOGNIZED;
            }
            return deviceType;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getTypeValue() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getUa() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ua_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getUaBytes() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ua_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final int getW() {
            return this.f32988w_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final String getXff() {
            Object obj = this.xff_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.xff_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final ByteString getXffBytes() {
            Object obj = this.xff_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.xff_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public final boolean hasGeo() {
            return this.geo_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + getUa().hashCode()) * 37) + 3) * 53) + getIfa().hashCode()) * 37) + 4) * 53) + Internal.hashBoolean(getDnt())) * 37) + 5) * 53) + Internal.hashBoolean(getLmt())) * 37) + 6) * 53) + getMake().hashCode()) * 37) + 7) * 53) + getModel().hashCode()) * 37) + 8) * 53) + this.os_) * 37) + 9) * 53) + getOsv().hashCode()) * 37) + 10) * 53) + getHwv().hashCode()) * 37) + 11) * 53) + getH()) * 37) + 12) * 53) + getW()) * 37) + 13) * 53) + getPpi()) * 37) + 14) * 53) + Float.floatToIntBits(getPxratio())) * 37) + 15) * 53) + Internal.hashBoolean(getJs())) * 37) + 16) * 53) + getLang().hashCode()) * 37) + 17) * 53) + getIp().hashCode()) * 37) + 18) * 53) + getIpv6().hashCode()) * 37) + 19) * 53) + getXff().hashCode()) * 37) + 20) * 53) + Internal.hashBoolean(getIptr())) * 37) + 21) * 53) + getCarrier().hashCode()) * 37) + 22) * 53) + getMccmnc().hashCode()) * 37) + 23) * 53) + getMccmncsim().hashCode()) * 37) + 24) * 53) + this.contype_) * 37) + 25) * 53) + Internal.hashBoolean(getGeofetch());
            int i = hashCode;
            if (hasGeo()) {
                i = (((hashCode * 37) + 26) * 53) + getGeo().hashCode();
            }
            int i2 = i;
            if (hasExt()) {
                i2 = (((i * 37) + 28) * 53) + getExt().hashCode();
            }
            int i3 = i2;
            if (getExtProtoCount() > 0) {
                i3 = (((i2 * 37) + 27) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32957xf57743d7.ensureFieldAccessorsInitialized(Device.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Device();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.type_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.type_);
            }
            if (!getUaBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.ua_);
            }
            if (!getIfaBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.ifa_);
            }
            boolean z = this.dnt_;
            if (z) {
                codedOutputStream.writeBool(4, z);
            }
            boolean z2 = this.lmt_;
            if (z2) {
                codedOutputStream.writeBool(5, z2);
            }
            if (!getMakeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.make_);
            }
            if (!getModelBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.model_);
            }
            if (this.os_ != EnumC9867OS.OS_INVALID.getNumber()) {
                codedOutputStream.writeEnum(8, this.os_);
            }
            if (!getOsvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.osv_);
            }
            if (!getHwvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.hwv_);
            }
            int i = this.f32987h_;
            if (i != 0) {
                codedOutputStream.writeUInt32(11, i);
            }
            int i2 = this.f32988w_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(12, i2);
            }
            int i3 = this.ppi_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(13, i3);
            }
            float f = this.pxratio_;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                codedOutputStream.writeFloat(14, f);
            }
            boolean z3 = this.js_;
            if (z3) {
                codedOutputStream.writeBool(15, z3);
            }
            if (!getLangBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.lang_);
            }
            if (!getIpBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 17, this.ip_);
            }
            if (!getIpv6Bytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.ipv6_);
            }
            if (!getXffBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 19, this.xff_);
            }
            boolean z4 = this.iptr_;
            if (z4) {
                codedOutputStream.writeBool(20, z4);
            }
            if (!getCarrierBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 21, this.carrier_);
            }
            if (!getMccmncBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 22, this.mccmnc_);
            }
            if (!getMccmncsimBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 23, this.mccmncsim_);
            }
            if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(24, this.contype_);
            }
            boolean z5 = this.geofetch_;
            if (z5) {
                codedOutputStream.writeBool(25, z5);
            }
            if (this.geo_ != null) {
                codedOutputStream.writeMessage(26, getGeo());
            }
            for (int i4 = 0; i4 < this.extProto_.size(); i4++) {
                codedOutputStream.writeMessage(27, this.extProto_.get(i4));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(28, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$DeviceOrBuilder.class */
    public interface DeviceOrBuilder extends MessageOrBuilder {
        String getCarrier();

        ByteString getCarrierBytes();

        ConnectionType getContype();

        int getContypeValue();

        boolean getDnt();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        Geo getGeo();

        GeoOrBuilder getGeoOrBuilder();

        boolean getGeofetch();

        int getH();

        String getHwv();

        ByteString getHwvBytes();

        String getIfa();

        ByteString getIfaBytes();

        String getIp();

        ByteString getIpBytes();

        boolean getIptr();

        String getIpv6();

        ByteString getIpv6Bytes();

        boolean getJs();

        String getLang();

        ByteString getLangBytes();

        boolean getLmt();

        String getMake();

        ByteString getMakeBytes();

        String getMccmnc();

        ByteString getMccmncBytes();

        String getMccmncsim();

        ByteString getMccmncsimBytes();

        String getModel();

        ByteString getModelBytes();

        EnumC9867OS getOs();

        int getOsValue();

        String getOsv();

        ByteString getOsvBytes();

        int getPpi();

        float getPxratio();

        DeviceType getType();

        int getTypeValue();

        String getUa();

        ByteString getUaBytes();

        int getW();

        String getXff();

        ByteString getXffBytes();

        boolean hasExt();

        boolean hasGeo();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Geo.class */
    public static final class Geo extends GeneratedMessageV3 implements GeoOrBuilder {
        public static final int ACCUR_FIELD_NUMBER = 4;
        public static final int CITY_FIELD_NUMBER = 10;
        public static final int COUNTRY_FIELD_NUMBER = 7;
        public static final int EXT_FIELD_NUMBER = 14;
        public static final int EXT_PROTO_FIELD_NUMBER = 13;
        public static final int IPSERV_FIELD_NUMBER = 6;
        public static final int LASTFIX_FIELD_NUMBER = 5;
        public static final int LAT_FIELD_NUMBER = 2;
        public static final int LON_FIELD_NUMBER = 3;
        public static final int METRO_FIELD_NUMBER = 9;
        public static final int REGION_FIELD_NUMBER = 8;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int UTCOFFSET_FIELD_NUMBER = 12;
        public static final int ZIP_FIELD_NUMBER = 11;
        private static final long serialVersionUID = 0;
        private int accur_;
        private volatile Object city_;
        private volatile Object country_;
        private List<Any> extProto_;
        private Struct ext_;
        private int ipserv_;
        private long lastfix_;
        private float lat_;
        private float lon_;
        private byte memoizedIsInitialized;
        private volatile Object metro_;
        private volatile Object region_;
        private int type_;
        private int utcoffset_;
        private volatile Object zip_;
        private static final Geo DEFAULT_INSTANCE = new Geo();
        private static final Parser<Geo> PARSER = new AbstractParser<Geo>() { // from class: com.explorestack.protobuf.adcom.Context.Geo.1
            @Override // com.explorestack.protobuf.Parser
            public final Geo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Geo(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Geo$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GeoOrBuilder {
            private int accur_;
            private int bitField0_;
            private Object city_;
            private Object country_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int ipserv_;
            private long lastfix_;
            private float lat_;
            private float lon_;
            private Object metro_;
            private Object region_;
            private int type_;
            private int utcoffset_;
            private Object zip_;

            private Builder() {
                this.type_ = 0;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = 0;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
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
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor;
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
                if (Geo.alwaysUseFieldBuilders) {
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
            public final Geo build() {
                Geo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Geo buildPartial() {
                Geo geo = new Geo(this);
                geo.type_ = this.type_;
                geo.lat_ = this.lat_;
                geo.lon_ = this.lon_;
                geo.accur_ = this.accur_;
                geo.lastfix_ = this.lastfix_;
                geo.ipserv_ = this.ipserv_;
                geo.country_ = this.country_;
                geo.region_ = this.region_;
                geo.metro_ = this.metro_;
                geo.city_ = this.city_;
                geo.zip_ = this.zip_;
                geo.utcoffset_ = this.utcoffset_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    geo.ext_ = this.ext_;
                } else {
                    geo.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    geo.extProto_ = this.extProto_;
                } else {
                    geo.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return geo;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.type_ = 0;
                this.lat_ = BitmapDescriptorFactory.HUE_RED;
                this.lon_ = BitmapDescriptorFactory.HUE_RED;
                this.accur_ = 0;
                this.lastfix_ = 0L;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
                this.utcoffset_ = 0;
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

            public final Builder clearAccur() {
                this.accur_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearCity() {
                this.city_ = Geo.getDefaultInstance().getCity();
                onChanged();
                return this;
            }

            public final Builder clearCountry() {
                this.country_ = Geo.getDefaultInstance().getCountry();
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

            public final Builder clearIpserv() {
                this.ipserv_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearLastfix() {
                this.lastfix_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearLat() {
                this.lat_ = BitmapDescriptorFactory.HUE_RED;
                onChanged();
                return this;
            }

            public final Builder clearLon() {
                this.lon_ = BitmapDescriptorFactory.HUE_RED;
                onChanged();
                return this;
            }

            public final Builder clearMetro() {
                this.metro_ = Geo.getDefaultInstance().getMetro();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearRegion() {
                this.region_ = Geo.getDefaultInstance().getRegion();
                onChanged();
                return this;
            }

            public final Builder clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearUtcoffset() {
                this.utcoffset_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearZip() {
                this.zip_ = Geo.getDefaultInstance().getZip();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final int getAccur() {
                return this.accur_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final String getCity() {
                Object obj = this.city_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.city_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final ByteString getCityBytes() {
                Object obj = this.city_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.city_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final String getCountry() {
                Object obj = this.country_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.country_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final ByteString getCountryBytes() {
                Object obj = this.country_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.country_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Geo getDefaultInstanceForType() {
                return Geo.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final IpLocationService getIpserv() {
                IpLocationService valueOf = IpLocationService.valueOf(this.ipserv_);
                IpLocationService ipLocationService = valueOf;
                if (valueOf == null) {
                    ipLocationService = IpLocationService.UNRECOGNIZED;
                }
                return ipLocationService;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final int getIpservValue() {
                return this.ipserv_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final long getLastfix() {
                return this.lastfix_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final float getLat() {
                return this.lat_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final float getLon() {
                return this.lon_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final String getMetro() {
                Object obj = this.metro_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.metro_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final ByteString getMetroBytes() {
                Object obj = this.metro_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.metro_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final String getRegion() {
                Object obj = this.region_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.region_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final ByteString getRegionBytes() {
                Object obj = this.region_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.region_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final LocationType getType() {
                LocationType valueOf = LocationType.valueOf(this.type_);
                LocationType locationType = valueOf;
                if (valueOf == null) {
                    locationType = LocationType.UNRECOGNIZED;
                }
                return locationType;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final int getUtcoffset() {
                return this.utcoffset_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final String getZip() {
                Object obj = this.zip_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.zip_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final ByteString getZipBytes() {
                Object obj = this.zip_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.zip_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32958x2dd7cdda.ensureFieldAccessorsInitialized(Geo.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.Geo.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Geo.access$17700()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$Geo r0 = (com.explorestack.protobuf.adcom.Context.Geo) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Geo$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L31
                L22:
                    r5 = move-exception
                    r0 = r5
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$Geo r0 = (com.explorestack.protobuf.adcom.Context.Geo) r0     // Catch: java.lang.Throwable -> L1c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r5 = move-exception
                L31:
                    r0 = r6
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r6
                    com.explorestack.protobuf.adcom.Context$Geo$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Geo.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Geo$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Geo) {
                    return mergeFrom((Geo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Geo geo) {
                if (geo == Geo.getDefaultInstance()) {
                    return this;
                }
                if (geo.type_ != 0) {
                    setTypeValue(geo.getTypeValue());
                }
                if (geo.getLat() != BitmapDescriptorFactory.HUE_RED) {
                    setLat(geo.getLat());
                }
                if (geo.getLon() != BitmapDescriptorFactory.HUE_RED) {
                    setLon(geo.getLon());
                }
                if (geo.getAccur() != 0) {
                    setAccur(geo.getAccur());
                }
                if (geo.getLastfix() != 0) {
                    setLastfix(geo.getLastfix());
                }
                if (geo.ipserv_ != 0) {
                    setIpservValue(geo.getIpservValue());
                }
                if (!geo.getCountry().isEmpty()) {
                    this.country_ = geo.country_;
                    onChanged();
                }
                if (!geo.getRegion().isEmpty()) {
                    this.region_ = geo.region_;
                    onChanged();
                }
                if (!geo.getMetro().isEmpty()) {
                    this.metro_ = geo.metro_;
                    onChanged();
                }
                if (!geo.getCity().isEmpty()) {
                    this.city_ = geo.city_;
                    onChanged();
                }
                if (!geo.getZip().isEmpty()) {
                    this.zip_ = geo.zip_;
                    onChanged();
                }
                if (geo.getUtcoffset() != 0) {
                    setUtcoffset(geo.getUtcoffset());
                }
                if (geo.hasExt()) {
                    mergeExt(geo.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!geo.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = geo.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(geo.extProto_);
                        }
                        onChanged();
                    }
                } else if (!geo.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = geo.extProto_;
                        this.bitField0_ &= -2;
                        if (Geo.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(geo.extProto_);
                    }
                }
                mergeUnknownFields(geo.unknownFields);
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

            public final Builder setAccur(int i) {
                this.accur_ = i;
                onChanged();
                return this;
            }

            public final Builder setCity(String str) {
                Objects.requireNonNull(str);
                this.city_ = str;
                onChanged();
                return this;
            }

            public final Builder setCityBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Geo.checkByteStringIsUtf8(byteString);
                this.city_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setCountry(String str) {
                Objects.requireNonNull(str);
                this.country_ = str;
                onChanged();
                return this;
            }

            public final Builder setCountryBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Geo.checkByteStringIsUtf8(byteString);
                this.country_ = byteString;
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

            public final Builder setIpserv(IpLocationService ipLocationService) {
                Objects.requireNonNull(ipLocationService);
                this.ipserv_ = ipLocationService.getNumber();
                onChanged();
                return this;
            }

            public final Builder setIpservValue(int i) {
                this.ipserv_ = i;
                onChanged();
                return this;
            }

            public final Builder setLastfix(long j) {
                this.lastfix_ = j;
                onChanged();
                return this;
            }

            public final Builder setLat(float f) {
                this.lat_ = f;
                onChanged();
                return this;
            }

            public final Builder setLon(float f) {
                this.lon_ = f;
                onChanged();
                return this;
            }

            public final Builder setMetro(String str) {
                Objects.requireNonNull(str);
                this.metro_ = str;
                onChanged();
                return this;
            }

            public final Builder setMetroBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Geo.checkByteStringIsUtf8(byteString);
                this.metro_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRegion(String str) {
                Objects.requireNonNull(str);
                this.region_ = str;
                onChanged();
                return this;
            }

            public final Builder setRegionBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Geo.checkByteStringIsUtf8(byteString);
                this.region_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setType(LocationType locationType) {
                Objects.requireNonNull(locationType);
                this.type_ = locationType.getNumber();
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

            public final Builder setUtcoffset(int i) {
                this.utcoffset_ = i;
                onChanged();
                return this;
            }

            public final Builder setZip(String str) {
                Objects.requireNonNull(str);
                this.zip_ = str;
                onChanged();
                return this;
            }

            public final Builder setZipBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Geo.checkByteStringIsUtf8(byteString);
                this.zip_ = byteString;
                onChanged();
                return this;
            }
        }

        private Geo() {
            this.memoizedIsInitialized = (byte) (-1);
            this.type_ = 0;
            this.ipserv_ = 0;
            this.country_ = "";
            this.region_ = "";
            this.metro_ = "";
            this.city_ = "";
            this.zip_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Geo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.type_ = codedInputStream.readEnum();
                                continue;
                            case 21:
                                this.lat_ = codedInputStream.readFloat();
                                continue;
                            case 29:
                                this.lon_ = codedInputStream.readFloat();
                                continue;
                            case 32:
                                this.accur_ = codedInputStream.readUInt32();
                                continue;
                            case 40:
                                this.lastfix_ = codedInputStream.readUInt64();
                                continue;
                            case 48:
                                this.ipserv_ = codedInputStream.readEnum();
                                continue;
                            case 58:
                                this.country_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 66:
                                this.region_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 74:
                                this.metro_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 82:
                                this.city_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 90:
                                this.zip_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 96:
                                this.utcoffset_ = codedInputStream.readInt32();
                                continue;
                            case 106:
                                boolean z4 = z2;
                                if (!(z2 & true)) {
                                    boolean z5 = z2;
                                    boolean z6 = z2;
                                    this.extProto_ = new ArrayList();
                                    z4 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z4;
                                continue;
                            case 114:
                                Struct.Builder builder = null;
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z7 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z8 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z9 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private Geo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Geo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Geo geo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(geo);
        }

        public static Geo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Geo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Geo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Geo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Geo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Geo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Geo parseFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Geo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Geo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Geo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Geo> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Geo)) {
                return super.equals(obj);
            }
            Geo geo = (Geo) obj;
            if (this.type_ != geo.type_ || Float.floatToIntBits(getLat()) != Float.floatToIntBits(geo.getLat()) || Float.floatToIntBits(getLon()) != Float.floatToIntBits(geo.getLon()) || getAccur() != geo.getAccur() || getLastfix() != geo.getLastfix() || this.ipserv_ != geo.ipserv_ || !getCountry().equals(geo.getCountry()) || !getRegion().equals(geo.getRegion()) || !getMetro().equals(geo.getMetro()) || !getCity().equals(geo.getCity()) || !getZip().equals(geo.getZip()) || getUtcoffset() != geo.getUtcoffset() || hasExt() != geo.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(geo.getExt())) && getExtProtoList().equals(geo.getExtProtoList()) && this.unknownFields.equals(geo.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final int getAccur() {
            return this.accur_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final String getCity() {
            Object obj = this.city_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.city_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final ByteString getCityBytes() {
            Object obj = this.city_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.city_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final String getCountry() {
            Object obj = this.country_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.country_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final ByteString getCountryBytes() {
            Object obj = this.country_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.country_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Geo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final IpLocationService getIpserv() {
            IpLocationService valueOf = IpLocationService.valueOf(this.ipserv_);
            IpLocationService ipLocationService = valueOf;
            if (valueOf == null) {
                ipLocationService = IpLocationService.UNRECOGNIZED;
            }
            return ipLocationService;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final int getIpservValue() {
            return this.ipserv_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final long getLastfix() {
            return this.lastfix_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final float getLat() {
            return this.lat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final float getLon() {
            return this.lon_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final String getMetro() {
            Object obj = this.metro_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.metro_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final ByteString getMetroBytes() {
            Object obj = this.metro_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.metro_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Geo> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final String getRegion() {
            Object obj = this.region_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.region_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final ByteString getRegionBytes() {
            Object obj = this.region_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.region_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.type_ != LocationType.LOCATION_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
            float f = this.lat_;
            int i2 = computeEnumSize;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                i2 = computeEnumSize + CodedOutputStream.computeFloatSize(2, f);
            }
            float f2 = this.lon_;
            int i3 = i2;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                i3 = i2 + CodedOutputStream.computeFloatSize(3, f2);
            }
            int i4 = this.accur_;
            int i5 = i3;
            if (i4 != 0) {
                i5 = i3 + CodedOutputStream.computeUInt32Size(4, i4);
            }
            long j = this.lastfix_;
            int i6 = i5;
            if (j != 0) {
                i6 = i5 + CodedOutputStream.computeUInt64Size(5, j);
            }
            int i7 = i6;
            if (this.ipserv_ != IpLocationService.IP_LOCATION_SERVICE_INVALID.getNumber()) {
                i7 = i6 + CodedOutputStream.computeEnumSize(6, this.ipserv_);
            }
            int i8 = i7;
            if (!getCountryBytes().isEmpty()) {
                i8 = i7 + GeneratedMessageV3.computeStringSize(7, this.country_);
            }
            int i9 = i8;
            if (!getRegionBytes().isEmpty()) {
                i9 = i8 + GeneratedMessageV3.computeStringSize(8, this.region_);
            }
            int i10 = i9;
            if (!getMetroBytes().isEmpty()) {
                i10 = i9 + GeneratedMessageV3.computeStringSize(9, this.metro_);
            }
            int i11 = i10;
            if (!getCityBytes().isEmpty()) {
                i11 = i10 + GeneratedMessageV3.computeStringSize(10, this.city_);
            }
            int i12 = i11;
            if (!getZipBytes().isEmpty()) {
                i12 = i11 + GeneratedMessageV3.computeStringSize(11, this.zip_);
            }
            int i13 = this.utcoffset_;
            int i14 = i12;
            int i15 = 0;
            if (i13 != 0) {
                i14 = i12 + CodedOutputStream.computeInt32Size(12, i13);
                i15 = 0;
            }
            while (i15 < this.extProto_.size()) {
                i14 += CodedOutputStream.computeMessageSize(13, this.extProto_.get(i15));
                i15++;
            }
            int i16 = i14;
            if (this.ext_ != null) {
                i16 = i14 + CodedOutputStream.computeMessageSize(14, getExt());
            }
            int serializedSize = i16 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final LocationType getType() {
            LocationType valueOf = LocationType.valueOf(this.type_);
            LocationType locationType = valueOf;
            if (valueOf == null) {
                locationType = LocationType.UNRECOGNIZED;
            }
            return locationType;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final int getTypeValue() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final int getUtcoffset() {
            return this.utcoffset_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final String getZip() {
            Object obj = this.zip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.zip_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final ByteString getZipBytes() {
            Object obj = this.zip_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.zip_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + Float.floatToIntBits(getLat())) * 37) + 3) * 53) + Float.floatToIntBits(getLon())) * 37) + 4) * 53) + getAccur()) * 37) + 5) * 53) + Internal.hashLong(getLastfix())) * 37) + 6) * 53) + this.ipserv_) * 37) + 7) * 53) + getCountry().hashCode()) * 37) + 8) * 53) + getRegion().hashCode()) * 37) + 9) * 53) + getMetro().hashCode()) * 37) + 10) * 53) + getCity().hashCode()) * 37) + 11) * 53) + getZip().hashCode()) * 37) + 12) * 53) + getUtcoffset();
            int i = hashCode;
            if (hasExt()) {
                i = (((hashCode * 37) + 14) * 53) + getExt().hashCode();
            }
            int i2 = i;
            if (getExtProtoCount() > 0) {
                i2 = (((i * 37) + 13) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32958x2dd7cdda.ensureFieldAccessorsInitialized(Geo.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Geo();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.type_ != LocationType.LOCATION_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.type_);
            }
            float f = this.lat_;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                codedOutputStream.writeFloat(2, f);
            }
            float f2 = this.lon_;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                codedOutputStream.writeFloat(3, f2);
            }
            int i = this.accur_;
            if (i != 0) {
                codedOutputStream.writeUInt32(4, i);
            }
            long j = this.lastfix_;
            if (j != 0) {
                codedOutputStream.writeUInt64(5, j);
            }
            if (this.ipserv_ != IpLocationService.IP_LOCATION_SERVICE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(6, this.ipserv_);
            }
            if (!getCountryBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.country_);
            }
            if (!getRegionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.region_);
            }
            if (!getMetroBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.metro_);
            }
            if (!getCityBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.city_);
            }
            if (!getZipBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.zip_);
            }
            int i2 = this.utcoffset_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(12, i2);
            }
            for (int i3 = 0; i3 < this.extProto_.size(); i3++) {
                codedOutputStream.writeMessage(13, this.extProto_.get(i3));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(14, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$GeoOrBuilder.class */
    public interface GeoOrBuilder extends MessageOrBuilder {
        int getAccur();

        String getCity();

        ByteString getCityBytes();

        String getCountry();

        ByteString getCountryBytes();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        IpLocationService getIpserv();

        int getIpservValue();

        long getLastfix();

        float getLat();

        float getLon();

        String getMetro();

        ByteString getMetroBytes();

        String getRegion();

        ByteString getRegionBytes();

        LocationType getType();

        int getTypeValue();

        int getUtcoffset();

        String getZip();

        ByteString getZipBytes();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Regs.class */
    public static final class Regs extends GeneratedMessageV3 implements RegsOrBuilder {
        public static final int COPPA_FIELD_NUMBER = 1;
        public static final int EXT_FIELD_NUMBER = 4;
        public static final int EXT_PROTO_FIELD_NUMBER = 3;
        public static final int GDPR_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private boolean coppa_;
        private List<Any> extProto_;
        private Struct ext_;
        private boolean gdpr_;
        private byte memoizedIsInitialized;
        private static final Regs DEFAULT_INSTANCE = new Regs();
        private static final Parser<Regs> PARSER = new AbstractParser<Regs>() { // from class: com.explorestack.protobuf.adcom.Context.Regs.1
            @Override // com.explorestack.protobuf.Parser
            public final Regs parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Regs(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Regs$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RegsOrBuilder {
            private int bitField0_;
            private boolean coppa_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private boolean gdpr_;

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
                return AdcomProto.f32959x71787ef0;
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
                if (Regs.alwaysUseFieldBuilders) {
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
            public final Regs build() {
                Regs buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Regs buildPartial() {
                Regs regs = new Regs(this);
                regs.coppa_ = this.coppa_;
                regs.gdpr_ = this.gdpr_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    regs.ext_ = this.ext_;
                } else {
                    regs.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    regs.extProto_ = this.extProto_;
                } else {
                    regs.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return regs;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.coppa_ = false;
                this.gdpr_ = false;
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

            public final Builder clearCoppa() {
                this.coppa_ = false;
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

            public final Builder clearGdpr() {
                this.gdpr_ = false;
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final boolean getCoppa() {
                return this.coppa_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Regs getDefaultInstanceForType() {
                return Regs.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.f32959x71787ef0;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final boolean getGdpr() {
                return this.gdpr_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32960x4bb1b56e.ensureFieldAccessorsInitialized(Regs.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.Regs.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Regs.access$24300()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$Regs r0 = (com.explorestack.protobuf.adcom.Context.Regs) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Regs$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L31
                L22:
                    r5 = move-exception
                    r0 = r5
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$Regs r0 = (com.explorestack.protobuf.adcom.Context.Regs) r0     // Catch: java.lang.Throwable -> L1c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r5 = move-exception
                L31:
                    r0 = r6
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r6
                    com.explorestack.protobuf.adcom.Context$Regs$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Regs.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Regs$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Regs) {
                    return mergeFrom((Regs) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Regs regs) {
                if (regs == Regs.getDefaultInstance()) {
                    return this;
                }
                if (regs.getCoppa()) {
                    setCoppa(regs.getCoppa());
                }
                if (regs.getGdpr()) {
                    setGdpr(regs.getGdpr());
                }
                if (regs.hasExt()) {
                    mergeExt(regs.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!regs.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = regs.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(regs.extProto_);
                        }
                        onChanged();
                    }
                } else if (!regs.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = regs.extProto_;
                        this.bitField0_ &= -2;
                        if (Regs.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(regs.extProto_);
                    }
                }
                mergeUnknownFields(regs.unknownFields);
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

            public final Builder setCoppa(boolean z) {
                this.coppa_ = z;
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

            public final Builder setGdpr(boolean z) {
                this.gdpr_ = z;
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

        private Regs() {
            this.memoizedIsInitialized = (byte) (-1);
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Regs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.coppa_ = codedInputStream.readBool();
                            } else if (readTag == 16) {
                                this.gdpr_ = codedInputStream.readBool();
                            } else if (readTag == 26) {
                                boolean z4 = z2;
                                if (!(z2 & true)) {
                                    boolean z5 = z2;
                                    boolean z6 = z2;
                                    this.extProto_ = new ArrayList();
                                    z4 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z4;
                            } else if (readTag == 34) {
                                Struct.Builder builder = null;
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z7 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z8 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z9 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private Regs(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Regs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.f32959x71787ef0;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Regs regs) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(regs);
        }

        public static Regs parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Regs parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Regs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Regs parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Regs parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Regs parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Regs parseFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Regs parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Regs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Regs parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Regs> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Regs)) {
                return super.equals(obj);
            }
            Regs regs = (Regs) obj;
            if (getCoppa() != regs.getCoppa() || getGdpr() != regs.getGdpr() || hasExt() != regs.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(regs.getExt())) && getExtProtoList().equals(regs.getExtProtoList()) && this.unknownFields.equals(regs.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final boolean getCoppa() {
            return this.coppa_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Regs getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final boolean getGdpr() {
            return this.gdpr_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Regs> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            boolean z = this.coppa_;
            int computeBoolSize = z ? CodedOutputStream.computeBoolSize(1, z) + 0 : 0;
            boolean z2 = this.gdpr_;
            int i2 = computeBoolSize;
            int i3 = 0;
            if (z2) {
                i2 = computeBoolSize + CodedOutputStream.computeBoolSize(2, z2);
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

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + Internal.hashBoolean(getCoppa())) * 37) + 2) * 53) + Internal.hashBoolean(getGdpr());
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
            return AdcomProto.f32960x4bb1b56e.ensureFieldAccessorsInitialized(Regs.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Regs();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z = this.coppa_;
            if (z) {
                codedOutputStream.writeBool(1, z);
            }
            boolean z2 = this.gdpr_;
            if (z2) {
                codedOutputStream.writeBool(2, z2);
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

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$RegsOrBuilder.class */
    public interface RegsOrBuilder extends MessageOrBuilder {
        boolean getCoppa();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        boolean getGdpr();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Restrictions.class */
    public static final class Restrictions extends GeneratedMessageV3 implements RestrictionsOrBuilder {
        public static final int BADV_FIELD_NUMBER = 3;
        public static final int BAPP_FIELD_NUMBER = 4;
        public static final int BATTR_FIELD_NUMBER = 5;
        public static final int BCAT_FIELD_NUMBER = 1;
        public static final int CATTAX_FIELD_NUMBER = 2;
        public static final int EXT_FIELD_NUMBER = 7;
        public static final int EXT_PROTO_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private LazyStringList badv_;
        private LazyStringList bapp_;
        private int battrMemoizedSerializedSize;
        private List<Integer> battr_;
        private LazyStringList bcat_;
        private int cattax_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new Internal.ListAdapter.Converter<Integer, CreativeAttribute>() { // from class: com.explorestack.protobuf.adcom.Context.Restrictions.1
            public final CreativeAttribute convert(Integer num) {
                CreativeAttribute valueOf = CreativeAttribute.valueOf(num.intValue());
                CreativeAttribute creativeAttribute = valueOf;
                if (valueOf == null) {
                    creativeAttribute = CreativeAttribute.UNRECOGNIZED;
                }
                return creativeAttribute;
            }
        };
        private static final Restrictions DEFAULT_INSTANCE = new Restrictions();
        private static final Parser<Restrictions> PARSER = new AbstractParser<Restrictions>() { // from class: com.explorestack.protobuf.adcom.Context.Restrictions.2
            @Override // com.explorestack.protobuf.Parser
            public final Restrictions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Restrictions(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$Restrictions$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RestrictionsOrBuilder {
            private LazyStringList badv_;
            private LazyStringList bapp_;
            private List<Integer> battr_;
            private LazyStringList bcat_;
            private int bitField0_;
            private int cattax_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;

            private Builder() {
                this.bcat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.badv_ = LazyStringArrayList.EMPTY;
                this.bapp_ = LazyStringArrayList.EMPTY;
                this.battr_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.bcat_ = LazyStringArrayList.EMPTY;
                this.cattax_ = 0;
                this.badv_ = LazyStringArrayList.EMPTY;
                this.bapp_ = LazyStringArrayList.EMPTY;
                this.battr_ = Collections.emptyList();
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
                if ((this.bitField0_ & 16) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 16;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32961xe14c9528;
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
                if (Restrictions.alwaysUseFieldBuilders) {
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

            public final Builder addBadv(String str) {
                Objects.requireNonNull(str);
                ensureBadvIsMutable();
                this.badv_.add(str);
                onChanged();
                return this;
            }

            public final Builder addBadvBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Restrictions.checkByteStringIsUtf8(byteString);
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
                Restrictions.checkByteStringIsUtf8(byteString);
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
                Restrictions.checkByteStringIsUtf8(byteString);
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

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Restrictions build() {
                Restrictions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Restrictions buildPartial() {
                Restrictions restrictions = new Restrictions(this);
                if ((this.bitField0_ & 1) != 0) {
                    this.bcat_ = this.bcat_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                restrictions.bcat_ = this.bcat_;
                restrictions.cattax_ = this.cattax_;
                if ((this.bitField0_ & 2) != 0) {
                    this.badv_ = this.badv_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                restrictions.badv_ = this.badv_;
                if ((this.bitField0_ & 4) != 0) {
                    this.bapp_ = this.bapp_.getUnmodifiableView();
                    this.bitField0_ &= -5;
                }
                restrictions.bapp_ = this.bapp_;
                if ((this.bitField0_ & 8) != 0) {
                    this.battr_ = Collections.unmodifiableList(this.battr_);
                    this.bitField0_ &= -9;
                }
                restrictions.battr_ = this.battr_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    restrictions.ext_ = this.ext_;
                } else {
                    restrictions.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -17;
                    }
                    restrictions.extProto_ = this.extProto_;
                } else {
                    restrictions.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return restrictions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.bcat_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.cattax_ = 0;
                this.badv_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                this.bapp_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                this.battr_ = Collections.emptyList();
                this.bitField0_ &= -9;
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final String getBadv(int i) {
                return (String) this.badv_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ByteString getBadvBytes(int i) {
                return this.badv_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getBadvCount() {
                return this.badv_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ProtocolStringList getBadvList() {
                return this.badv_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final String getBapp(int i) {
                return (String) this.bapp_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ByteString getBappBytes(int i) {
                return this.bapp_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getBappCount() {
                return this.bapp_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ProtocolStringList getBappList() {
                return this.bapp_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final CreativeAttribute getBattr(int i) {
                return (CreativeAttribute) Restrictions.battr_converter_.convert(this.battr_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getBattrCount() {
                return this.battr_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final List<CreativeAttribute> getBattrList() {
                return new Internal.ListAdapter(this.battr_, Restrictions.battr_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getBattrValue(int i) {
                return this.battr_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final List<Integer> getBattrValueList() {
                return Collections.unmodifiableList(this.battr_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final String getBcat(int i) {
                return (String) this.bcat_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ByteString getBcatBytes(int i) {
                return this.bcat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getBcatCount() {
                return this.bcat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final ProtocolStringList getBcatList() {
                return this.bcat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                CategoryTaxonomy categoryTaxonomy = valueOf;
                if (valueOf == null) {
                    categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
                }
                return categoryTaxonomy;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Restrictions getDefaultInstanceForType() {
                return Restrictions.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.f32961xe14c9528;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32962xf80813a6.ensureFieldAccessorsInitialized(Restrictions.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.Restrictions.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.Restrictions.access$25800()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$Restrictions r0 = (com.explorestack.protobuf.adcom.Context.Restrictions) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Restrictions$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L31
                L22:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$Restrictions r0 = (com.explorestack.protobuf.adcom.Context.Restrictions) r0     // Catch: java.lang.Throwable -> L1c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r6 = move-exception
                L31:
                    r0 = r5
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$Restrictions$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Restrictions.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$Restrictions$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Restrictions) {
                    return mergeFrom((Restrictions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Restrictions restrictions) {
                if (restrictions == Restrictions.getDefaultInstance()) {
                    return this;
                }
                if (!restrictions.bcat_.isEmpty()) {
                    if (this.bcat_.isEmpty()) {
                        this.bcat_ = restrictions.bcat_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureBcatIsMutable();
                        this.bcat_.addAll(restrictions.bcat_);
                    }
                    onChanged();
                }
                if (restrictions.cattax_ != 0) {
                    setCattaxValue(restrictions.getCattaxValue());
                }
                if (!restrictions.badv_.isEmpty()) {
                    if (this.badv_.isEmpty()) {
                        this.badv_ = restrictions.badv_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureBadvIsMutable();
                        this.badv_.addAll(restrictions.badv_);
                    }
                    onChanged();
                }
                if (!restrictions.bapp_.isEmpty()) {
                    if (this.bapp_.isEmpty()) {
                        this.bapp_ = restrictions.bapp_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureBappIsMutable();
                        this.bapp_.addAll(restrictions.bapp_);
                    }
                    onChanged();
                }
                if (!restrictions.battr_.isEmpty()) {
                    if (this.battr_.isEmpty()) {
                        this.battr_ = restrictions.battr_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureBattrIsMutable();
                        this.battr_.addAll(restrictions.battr_);
                    }
                    onChanged();
                }
                if (restrictions.hasExt()) {
                    mergeExt(restrictions.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!restrictions.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = restrictions.extProto_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(restrictions.extProto_);
                        }
                        onChanged();
                    }
                } else if (!restrictions.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = restrictions.extProto_;
                        this.bitField0_ &= -17;
                        if (Restrictions.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(restrictions.extProto_);
                    }
                }
                mergeUnknownFields(restrictions.unknownFields);
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

        private Restrictions() {
            this.memoizedIsInitialized = (byte) (-1);
            this.bcat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.badv_ = LazyStringArrayList.EMPTY;
            this.bapp_ = LazyStringArrayList.EMPTY;
            this.battr_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Restrictions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            boolean z;
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                boolean z4 = z3;
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    boolean z5 = z3;
                                    if (!(z3 & true)) {
                                        boolean z6 = z3;
                                        boolean z7 = z3;
                                        this.bcat_ = new LazyStringArrayList();
                                        z5 = z3 | true;
                                    }
                                    this.bcat_.add(readStringRequireUtf8);
                                    z3 = z5;
                                } else if (readTag == 16) {
                                    this.cattax_ = codedInputStream.readEnum();
                                } else if (readTag == 26) {
                                    String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                                    boolean z8 = z3;
                                    if (!(z3 & true)) {
                                        boolean z9 = z3;
                                        boolean z10 = z3;
                                        this.badv_ = new LazyStringArrayList();
                                        z8 = z3 | true;
                                    }
                                    this.badv_.add(readStringRequireUtf82);
                                    z3 = z8;
                                } else if (readTag == 34) {
                                    String readStringRequireUtf83 = codedInputStream.readStringRequireUtf8();
                                    boolean z11 = z3;
                                    if (!(z3 & true)) {
                                        boolean z12 = z3;
                                        boolean z13 = z3;
                                        this.bapp_ = new LazyStringArrayList();
                                        z11 = z3 | true;
                                    }
                                    this.bapp_.add(readStringRequireUtf83);
                                    z3 = z11;
                                } else if (readTag == 40) {
                                    int readEnum = codedInputStream.readEnum();
                                    boolean z14 = z3;
                                    if (!(z3 & true)) {
                                        boolean z15 = z3;
                                        boolean z16 = z3;
                                        this.battr_ = new ArrayList();
                                        z14 = z3 | true;
                                    }
                                    this.battr_.add(Integer.valueOf(readEnum));
                                    z3 = z14;
                                } else if (readTag == 42) {
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    boolean z17 = z3;
                                    while (true) {
                                        z = z17;
                                        if (codedInputStream.getBytesUntilLimit() <= 0) {
                                            break;
                                        }
                                        int readEnum2 = codedInputStream.readEnum();
                                        boolean z18 = z;
                                        if (!(z & true)) {
                                            this.battr_ = new ArrayList();
                                            z18 = z | true;
                                        }
                                        this.battr_.add(Integer.valueOf(readEnum2));
                                        z17 = z18;
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                    z3 = z;
                                } else if (readTag == 50) {
                                    boolean z19 = z3;
                                    if (!(z3 & true)) {
                                        boolean z20 = z3;
                                        boolean z21 = z3;
                                        this.extProto_ = new ArrayList();
                                        z19 = z3 | true;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    z3 = z19;
                                } else if (readTag == 58) {
                                    Struct.Builder builder = null;
                                    Struct struct = this.ext_;
                                    builder = struct != null ? struct.toBuilder() : builder;
                                    boolean z22 = z3;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    boolean z23 = z3;
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        boolean z24 = z3;
                                        this.ext_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z2 = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z4 & true) {
                        this.bcat_ = this.bcat_.getUnmodifiableView();
                    }
                    if (z4 & true) {
                        this.badv_ = this.badv_.getUnmodifiableView();
                    }
                    if (z4 & true) {
                        this.bapp_ = this.bapp_.getUnmodifiableView();
                    }
                    if (z4 & true) {
                        this.battr_ = Collections.unmodifiableList(this.battr_);
                    }
                    if (z4 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z3 & true) {
                this.bcat_ = this.bcat_.getUnmodifiableView();
            }
            if (z3 & true) {
                this.badv_ = this.badv_.getUnmodifiableView();
            }
            if (z3 & true) {
                this.bapp_ = this.bapp_.getUnmodifiableView();
            }
            if (z3 & true) {
                this.battr_ = Collections.unmodifiableList(this.battr_);
            }
            if (z3 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private Restrictions(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Restrictions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.f32961xe14c9528;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Restrictions restrictions) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(restrictions);
        }

        public static Restrictions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Restrictions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Restrictions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Restrictions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Restrictions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Restrictions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Restrictions parseFrom(InputStream inputStream) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Restrictions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Restrictions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Restrictions parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Restrictions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Restrictions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Restrictions> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Restrictions)) {
                return super.equals(obj);
            }
            Restrictions restrictions = (Restrictions) obj;
            if (!getBcatList().equals(restrictions.getBcatList()) || this.cattax_ != restrictions.cattax_ || !getBadvList().equals(restrictions.getBadvList()) || !getBappList().equals(restrictions.getBappList()) || !this.battr_.equals(restrictions.battr_) || hasExt() != restrictions.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(restrictions.getExt())) && getExtProtoList().equals(restrictions.getExtProtoList()) && this.unknownFields.equals(restrictions.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final String getBadv(int i) {
            return (String) this.badv_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ByteString getBadvBytes(int i) {
            return this.badv_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getBadvCount() {
            return this.badv_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ProtocolStringList getBadvList() {
            return this.badv_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final String getBapp(int i) {
            return (String) this.bapp_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ByteString getBappBytes(int i) {
            return this.bapp_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getBappCount() {
            return this.bapp_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ProtocolStringList getBappList() {
            return this.bapp_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final CreativeAttribute getBattr(int i) {
            return battr_converter_.convert(this.battr_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getBattrCount() {
            return this.battr_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final List<CreativeAttribute> getBattrList() {
            return new Internal.ListAdapter(this.battr_, battr_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getBattrValue(int i) {
            return this.battr_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final List<Integer> getBattrValueList() {
            return this.battr_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final String getBcat(int i) {
            return (String) this.bcat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ByteString getBcatBytes(int i) {
            return this.bcat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getBcatCount() {
            return this.bcat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final ProtocolStringList getBcatList() {
            return this.bcat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            CategoryTaxonomy categoryTaxonomy = valueOf;
            if (valueOf == null) {
                categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
            }
            return categoryTaxonomy;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Restrictions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Restrictions> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.bcat_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.bcat_.getRaw(i3));
            }
            int size = i2 + 0 + (getBcatList().size() * 1);
            int i4 = size;
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                i4 = size + CodedOutputStream.computeEnumSize(2, this.cattax_);
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.badv_.size(); i6++) {
                i5 += computeStringSizeNoTag(this.badv_.getRaw(i6));
            }
            int size2 = getBadvList().size();
            int i7 = 0;
            for (int i8 = 0; i8 < this.bapp_.size(); i8++) {
                i7 += computeStringSizeNoTag(this.bapp_.getRaw(i8));
            }
            int size3 = getBappList().size();
            int i9 = 0;
            for (int i10 = 0; i10 < this.battr_.size(); i10++) {
                i9 += CodedOutputStream.computeEnumSizeNoTag(this.battr_.get(i10).intValue());
            }
            int i11 = i4 + i5 + (size2 * 1) + i7 + (size3 * 1) + i9;
            int i12 = i11;
            if (!getBattrList().isEmpty()) {
                i12 = i11 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i9);
            }
            this.battrMemoizedSerializedSize = i9;
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

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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
            if (getBcatCount() > 0) {
                i = (((hashCode * 37) + 1) * 53) + getBcatList().hashCode();
            }
            int i2 = (((i * 37) + 2) * 53) + this.cattax_;
            int i3 = i2;
            if (getBadvCount() > 0) {
                i3 = (((i2 * 37) + 3) * 53) + getBadvList().hashCode();
            }
            int i4 = i3;
            if (getBappCount() > 0) {
                i4 = (((i3 * 37) + 4) * 53) + getBappList().hashCode();
            }
            int i5 = i4;
            if (getBattrCount() > 0) {
                i5 = (((i4 * 37) + 5) * 53) + this.battr_.hashCode();
            }
            int i6 = i5;
            if (hasExt()) {
                i6 = (((i5 * 37) + 7) * 53) + getExt().hashCode();
            }
            int i7 = i6;
            if (getExtProtoCount() > 0) {
                i7 = (((i6 * 37) + 6) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i7 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32962xf80813a6.ensureFieldAccessorsInitialized(Restrictions.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Restrictions();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            getSerializedSize();
            for (int i2 = 0; i2 < this.bcat_.size(); i2++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.bcat_.getRaw(i2));
            }
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                codedOutputStream.writeEnum(2, this.cattax_);
            }
            for (int i3 = 0; i3 < this.badv_.size(); i3++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.badv_.getRaw(i3));
            }
            for (int i4 = 0; i4 < this.bapp_.size(); i4++) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.bapp_.getRaw(i4));
            }
            if (getBattrList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(42);
                codedOutputStream.writeUInt32NoTag(this.battrMemoizedSerializedSize);
            }
            int i5 = 0;
            while (true) {
                if (i5 < this.battr_.size()) {
                    codedOutputStream.writeEnumNoTag(this.battr_.get(i5).intValue());
                    i5++;
                }
            }
            for (i = 0; i < this.extProto_.size(); i++) {
                codedOutputStream.writeMessage(6, this.extProto_.get(i));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(7, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder.class */
    public interface RestrictionsOrBuilder extends MessageOrBuilder {
        String getBadv(int i);

        ByteString getBadvBytes(int i);

        int getBadvCount();

        List<String> getBadvList();

        String getBapp(int i);

        ByteString getBappBytes(int i);

        int getBappCount();

        List<String> getBappList();

        CreativeAttribute getBattr(int i);

        int getBattrCount();

        List<CreativeAttribute> getBattrList();

        int getBattrValue(int i);

        List<Integer> getBattrValueList();

        String getBcat(int i);

        ByteString getBcatBytes(int i);

        int getBcatCount();

        List<String> getBcatList();

        CategoryTaxonomy getCattax();

        int getCattaxValue();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$User.class */
    public static final class User extends GeneratedMessageV3 implements UserOrBuilder {
        public static final int BUYERUID_FIELD_NUMBER = 2;
        public static final int CONSENT_FIELD_NUMBER = 6;
        public static final int DATA_FIELD_NUMBER = 8;
        public static final int EXT_FIELD_NUMBER = 10;
        public static final int EXT_PROTO_FIELD_NUMBER = 9;
        public static final int GENDER_FIELD_NUMBER = 4;
        public static final int GEO_FIELD_NUMBER = 7;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int KEYWORDS_FIELD_NUMBER = 5;
        public static final int YOB_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object buyeruid_;
        private volatile Object consent_;
        private List<Data> data_;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object gender_;
        private Geo geo_;
        private volatile Object id_;
        private volatile Object keywords_;
        private byte memoizedIsInitialized;
        private int yob_;
        private static final User DEFAULT_INSTANCE = new User();
        private static final Parser<User> PARSER = new AbstractParser<User>() { // from class: com.explorestack.protobuf.adcom.Context.User.1
            @Override // com.explorestack.protobuf.Parser
            public final User parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new User(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$User$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements UserOrBuilder {
            private int bitField0_;
            private Object buyeruid_;
            private Object consent_;
            private RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> dataBuilder_;
            private List<Data> data_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object gender_;
            private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> geoBuilder_;
            private Geo geo_;
            private Object id_;
            private Object keywords_;
            private int yob_;

            private Builder() {
                this.id_ = "";
                this.buyeruid_ = "";
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.id_ = "";
                this.buyeruid_ = "";
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    List<Data> list = this.data_;
                    boolean z = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z = false;
                    }
                    this.dataBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.f32963xf4741204;
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

            private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> getGeoFieldBuilder() {
                if (this.geoBuilder_ == null) {
                    this.geoBuilder_ = new SingleFieldBuilderV3<>(getGeo(), getParentForChildren(), isClean());
                    this.geo_ = null;
                }
                return this.geoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (User.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public final Builder addAllData(Iterable<? extends Data> iterable) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.data_);
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

            public final Builder addData(int i, Data.Builder builder) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addData(int i, Data data) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(data);
                    ensureDataIsMutable();
                    this.data_.add(i, data);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, data);
                }
                return this;
            }

            public final Builder addData(Data.Builder builder) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addData(Data data) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(data);
                    ensureDataIsMutable();
                    this.data_.add(data);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(data);
                }
                return this;
            }

            public final Data.Builder addDataBuilder() {
                return getDataFieldBuilder().addBuilder(Data.getDefaultInstance());
            }

            public final Data.Builder addDataBuilder(int i) {
                return getDataFieldBuilder().addBuilder(i, Data.getDefaultInstance());
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
            public final User build() {
                User buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final User buildPartial() {
                User user = new User(this);
                user.id_ = this.id_;
                user.buyeruid_ = this.buyeruid_;
                user.yob_ = this.yob_;
                user.gender_ = this.gender_;
                user.keywords_ = this.keywords_;
                user.consent_ = this.consent_;
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    user.geo_ = this.geo_;
                } else {
                    user.geo_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    user.data_ = this.data_;
                } else {
                    user.data_ = repeatedFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                if (singleFieldBuilderV32 == null) {
                    user.ext_ = this.ext_;
                } else {
                    user.ext_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    user.extProto_ = this.extProto_;
                } else {
                    user.extProto_ = repeatedFieldBuilderV32.build();
                }
                onBuilt();
                return user;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.id_ = "";
                this.buyeruid_ = "";
                this.yob_ = 0;
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
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

            public final Builder clearBuyeruid() {
                this.buyeruid_ = User.getDefaultInstance().getBuyeruid();
                onChanged();
                return this;
            }

            public final Builder clearConsent() {
                this.consent_ = User.getDefaultInstance().getConsent();
                onChanged();
                return this;
            }

            public final Builder clearData() {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.data_ = Collections.emptyList();
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

            public final Builder clearGender() {
                this.gender_ = User.getDefaultInstance().getGender();
                onChanged();
                return this;
            }

            public final Builder clearGeo() {
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                    onChanged();
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                return this;
            }

            public final Builder clearId() {
                this.id_ = User.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public final Builder clearKeywords() {
                this.keywords_ = User.getDefaultInstance().getKeywords();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearYob() {
                this.yob_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final String getBuyeruid() {
                Object obj = this.buyeruid_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.buyeruid_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final ByteString getBuyeruidBytes() {
                Object obj = this.buyeruid_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.buyeruid_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final String getConsent() {
                Object obj = this.consent_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.consent_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final ByteString getConsentBytes() {
                Object obj = this.consent_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.consent_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final Data getData(int i) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Data.Builder getDataBuilder(int i) {
                return getDataFieldBuilder().getBuilder(i);
            }

            public final List<Data.Builder> getDataBuilderList() {
                return getDataFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final int getDataCount() {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final List<Data> getDataList() {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.data_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final DataOrBuilder getDataOrBuilder(int i) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 == null ? this.data_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final List<? extends DataOrBuilder> getDataOrBuilderList() {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final User getDefaultInstanceForType() {
                return User.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.f32963xf4741204;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final String getGender() {
                Object obj = this.gender_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.gender_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final ByteString getGenderBytes() {
                Object obj = this.gender_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gender_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final Geo getGeo() {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Geo geo = this.geo_;
                    Geo geo2 = geo;
                    if (geo == null) {
                        geo2 = Geo.getDefaultInstance();
                    }
                    return geo2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Geo.Builder getGeoBuilder() {
                onChanged();
                return getGeoFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final GeoOrBuilder getGeoOrBuilder() {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Geo geo = this.geo_;
                Geo geo2 = geo;
                if (geo == null) {
                    geo2 = Geo.getDefaultInstance();
                }
                return geo2;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final String getKeywords() {
                Object obj = this.keywords_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.keywords_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final int getYob() {
                return this.yob_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public final boolean hasGeo() {
                return (this.geoBuilder_ == null && this.geo_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.f32964x84c2f482.ensureFieldAccessorsInitialized(User.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Context.User.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Context.User.access$28100()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.adcom.Context$User r0 = (com.explorestack.protobuf.adcom.Context.User) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$User$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L31
                L22:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.adcom.Context$User r0 = (com.explorestack.protobuf.adcom.Context.User) r0     // Catch: java.lang.Throwable -> L1c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r6 = move-exception
                L31:
                    r0 = r5
                    if (r0 == 0) goto L3b
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Context$User$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.User.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Context$User$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof User) {
                    return mergeFrom((User) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(User user) {
                if (user == User.getDefaultInstance()) {
                    return this;
                }
                if (!user.getId().isEmpty()) {
                    this.id_ = user.id_;
                    onChanged();
                }
                if (!user.getBuyeruid().isEmpty()) {
                    this.buyeruid_ = user.buyeruid_;
                    onChanged();
                }
                if (user.getYob() != 0) {
                    setYob(user.getYob());
                }
                if (!user.getGender().isEmpty()) {
                    this.gender_ = user.gender_;
                    onChanged();
                }
                if (!user.getKeywords().isEmpty()) {
                    this.keywords_ = user.keywords_;
                    onChanged();
                }
                if (!user.getConsent().isEmpty()) {
                    this.consent_ = user.consent_;
                    onChanged();
                }
                if (user.hasGeo()) {
                    mergeGeo(user.getGeo());
                }
                if (this.dataBuilder_ == null) {
                    if (!user.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = user.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(user.data_);
                        }
                        onChanged();
                    }
                } else if (!user.data_.isEmpty()) {
                    if (this.dataBuilder_.isEmpty()) {
                        this.dataBuilder_.dispose();
                        this.dataBuilder_ = null;
                        this.data_ = user.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = User.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    } else {
                        this.dataBuilder_.addAllMessages(user.data_);
                    }
                }
                if (user.hasExt()) {
                    mergeExt(user.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!user.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = user.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(user.extProto_);
                        }
                        onChanged();
                    }
                } else if (!user.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = user.extProto_;
                        this.bitField0_ &= -3;
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        if (User.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(user.extProto_);
                    }
                }
                mergeUnknownFields(user.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergeGeo(Geo geo) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Geo geo2 = this.geo_;
                    if (geo2 != null) {
                        this.geo_ = Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                    } else {
                        this.geo_ = geo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(geo);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeData(int i) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
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

            public final Builder setBuyeruid(String str) {
                Objects.requireNonNull(str);
                this.buyeruid_ = str;
                onChanged();
                return this;
            }

            public final Builder setBuyeruidBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                User.checkByteStringIsUtf8(byteString);
                this.buyeruid_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setConsent(String str) {
                Objects.requireNonNull(str);
                this.consent_ = str;
                onChanged();
                return this;
            }

            public final Builder setConsentBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                User.checkByteStringIsUtf8(byteString);
                this.consent_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setData(int i, Data.Builder builder) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setData(int i, Data data) {
                RepeatedFieldBuilderV3<Data, Data.Builder, DataOrBuilder> repeatedFieldBuilderV3 = this.dataBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(data);
                    ensureDataIsMutable();
                    this.data_.set(i, data);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, data);
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

            public final Builder setGender(String str) {
                Objects.requireNonNull(str);
                this.gender_ = str;
                onChanged();
                return this;
            }

            public final Builder setGenderBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                User.checkByteStringIsUtf8(byteString);
                this.gender_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setGeo(Geo.Builder builder) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.geo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setGeo(Geo geo) {
                SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(geo);
                    this.geo_ = geo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(geo);
                }
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
                User.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setKeywords(String str) {
                Objects.requireNonNull(str);
                this.keywords_ = str;
                onChanged();
                return this;
            }

            public final Builder setKeywordsBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                User.checkByteStringIsUtf8(byteString);
                this.keywords_ = byteString;
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

            public final Builder setYob(int i) {
                this.yob_ = i;
                onChanged();
                return this;
            }
        }

        private User() {
            this.memoizedIsInitialized = (byte) (-1);
            this.id_ = "";
            this.buyeruid_ = "";
            this.gender_ = "";
            this.keywords_ = "";
            this.consent_ = "";
            this.data_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private User(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        Struct.Builder builder = null;
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                this.id_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 18:
                                this.buyeruid_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.yob_ = codedInputStream.readUInt32();
                                continue;
                            case 34:
                                this.gender_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 42:
                                this.keywords_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 50:
                                this.consent_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 58:
                                Geo geo = this.geo_;
                                Geo.Builder builder2 = geo != null ? geo.toBuilder() : null;
                                boolean z4 = z2;
                                Geo geo2 = (Geo) codedInputStream.readMessage(Geo.parser(), extensionRegistryLite);
                                boolean z5 = z2;
                                this.geo_ = geo2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(geo2);
                                    boolean z6 = z2;
                                    this.geo_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 66:
                                boolean z7 = z2;
                                if (!(z2 & true)) {
                                    boolean z8 = z2;
                                    boolean z9 = z2;
                                    this.data_ = new ArrayList();
                                    z7 = z2 | true;
                                }
                                this.data_.add(codedInputStream.readMessage(Data.parser(), extensionRegistryLite));
                                z2 = z7;
                                continue;
                            case 74:
                                boolean z10 = z2;
                                if (!(z2 & true)) {
                                    boolean z11 = z2;
                                    boolean z12 = z2;
                                    this.extProto_ = new ArrayList();
                                    z10 = z2 | true;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                z2 = z10;
                                continue;
                            case 82:
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                boolean z13 = z2;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                boolean z14 = z2;
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    boolean z15 = z2;
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
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    if (z3 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            if (z2 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private User(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.f32963xf4741204;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(User user) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(user);
        }

        public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static User parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static User parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static User parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static User parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static User parseFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static User parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static User parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static User parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<User> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof User)) {
                return super.equals(obj);
            }
            User user = (User) obj;
            if (!getId().equals(user.getId()) || !getBuyeruid().equals(user.getBuyeruid()) || getYob() != user.getYob() || !getGender().equals(user.getGender()) || !getKeywords().equals(user.getKeywords()) || !getConsent().equals(user.getConsent()) || hasGeo() != user.hasGeo()) {
                return false;
            }
            if ((hasGeo() && !getGeo().equals(user.getGeo())) || !getDataList().equals(user.getDataList()) || hasExt() != user.hasExt()) {
                return false;
            }
            return (!hasExt() || getExt().equals(user.getExt())) && getExtProtoList().equals(user.getExtProtoList()) && this.unknownFields.equals(user.unknownFields);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final String getBuyeruid() {
            Object obj = this.buyeruid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.buyeruid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final ByteString getBuyeruidBytes() {
            Object obj = this.buyeruid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.buyeruid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final String getConsent() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.consent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final ByteString getConsentBytes() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.consent_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final Data getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final int getDataCount() {
            return this.data_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final List<Data> getDataList() {
            return this.data_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final DataOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final List<? extends DataOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final User getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final String getGender() {
            Object obj = this.gender_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gender_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final ByteString getGenderBytes() {
            Object obj = this.gender_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gender_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final Geo getGeo() {
            Geo geo = this.geo_;
            Geo geo2 = geo;
            if (geo == null) {
                geo2 = Geo.getDefaultInstance();
            }
            return geo2;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final GeoOrBuilder getGeoOrBuilder() {
            return getGeo();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final String getKeywords() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.keywords_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final ByteString getKeywordsBytes() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.keywords_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<User> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i;
            int i2;
            int i3 = this.memoizedSize;
            if (i3 != -1) {
                return i3;
            }
            int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
            int i4 = computeStringSize;
            if (!getBuyeruidBytes().isEmpty()) {
                i4 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.buyeruid_);
            }
            int i5 = this.yob_;
            int i6 = i4;
            if (i5 != 0) {
                i6 = i4 + CodedOutputStream.computeUInt32Size(3, i5);
            }
            int i7 = i6;
            if (!getGenderBytes().isEmpty()) {
                i7 = i6 + GeneratedMessageV3.computeStringSize(4, this.gender_);
            }
            int i8 = i7;
            if (!getKeywordsBytes().isEmpty()) {
                i8 = i7 + GeneratedMessageV3.computeStringSize(5, this.keywords_);
            }
            int i9 = i8;
            if (!getConsentBytes().isEmpty()) {
                i9 = i8 + GeneratedMessageV3.computeStringSize(6, this.consent_);
            }
            int i10 = i9;
            if (this.geo_ != null) {
                i10 = i9 + CodedOutputStream.computeMessageSize(7, getGeo());
            }
            int i11 = 0;
            while (true) {
                i = i10;
                if (i11 < this.data_.size()) {
                    i10 += CodedOutputStream.computeMessageSize(8, this.data_.get(i11));
                    i11++;
                }
            }
            for (i2 = 0; i2 < this.extProto_.size(); i2++) {
                i += CodedOutputStream.computeMessageSize(9, this.extProto_.get(i2));
            }
            int i12 = i;
            if (this.ext_ != null) {
                i12 = i + CodedOutputStream.computeMessageSize(10, getExt());
            }
            int serializedSize = i12 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final int getYob() {
            return this.yob_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public final boolean hasGeo() {
            return this.geo_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getBuyeruid().hashCode()) * 37) + 3) * 53) + getYob()) * 37) + 4) * 53) + getGender().hashCode()) * 37) + 5) * 53) + getKeywords().hashCode()) * 37) + 6) * 53) + getConsent().hashCode();
            int i = hashCode;
            if (hasGeo()) {
                i = (((hashCode * 37) + 7) * 53) + getGeo().hashCode();
            }
            int i2 = i;
            if (getDataCount() > 0) {
                i2 = (((i * 37) + 8) * 53) + getDataList().hashCode();
            }
            int i3 = i2;
            if (hasExt()) {
                i3 = (((i2 * 37) + 10) * 53) + getExt().hashCode();
            }
            int i4 = i3;
            if (getExtProtoCount() > 0) {
                i4 = (((i3 * 37) + 9) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.f32964x84c2f482.ensureFieldAccessorsInitialized(User.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new User();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!getBuyeruidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.buyeruid_);
            }
            int i2 = this.yob_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(3, i2);
            }
            if (!getGenderBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.gender_);
            }
            if (!getKeywordsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.keywords_);
            }
            if (!getConsentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.consent_);
            }
            if (this.geo_ != null) {
                codedOutputStream.writeMessage(7, getGeo());
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.data_.size()) {
                    codedOutputStream.writeMessage(8, this.data_.get(i3));
                    i3++;
                }
            }
            for (i = 0; i < this.extProto_.size(); i++) {
                codedOutputStream.writeMessage(9, this.extProto_.get(i));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(10, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Context$UserOrBuilder.class */
    public interface UserOrBuilder extends MessageOrBuilder {
        String getBuyeruid();

        ByteString getBuyeruidBytes();

        String getConsent();

        ByteString getConsentBytes();

        Data getData(int i);

        int getDataCount();

        List<Data> getDataList();

        DataOrBuilder getDataOrBuilder(int i);

        List<? extends DataOrBuilder> getDataOrBuilderList();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getGender();

        ByteString getGenderBytes();

        Geo getGeo();

        GeoOrBuilder getGeoOrBuilder();

        String getId();

        ByteString getIdBytes();

        String getKeywords();

        ByteString getKeywordsBytes();

        int getYob();

        boolean hasExt();

        boolean hasGeo();
    }

    private Context() {
        this.memoizedIsInitialized = (byte) (-1);
        this.extProto_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Context(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            boolean z3 = z2;
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        Struct.Builder builder = null;
                        if (readTag == 10) {
                            App app = this.app_;
                            App.Builder builder2 = app != null ? app.toBuilder() : null;
                            boolean z4 = z2;
                            App app2 = (App) codedInputStream.readMessage(App.parser(), extensionRegistryLite);
                            boolean z5 = z2;
                            this.app_ = app2;
                            if (builder2 != null) {
                                builder2.mergeFrom(app2);
                                boolean z6 = z2;
                                this.app_ = builder2.buildPartial();
                            }
                        } else if (readTag == 18) {
                            Device device = this.device_;
                            Device.Builder builder3 = device != null ? device.toBuilder() : null;
                            boolean z7 = z2;
                            Device device2 = (Device) codedInputStream.readMessage(Device.parser(), extensionRegistryLite);
                            boolean z8 = z2;
                            this.device_ = device2;
                            if (builder3 != null) {
                                builder3.mergeFrom(device2);
                                boolean z9 = z2;
                                this.device_ = builder3.buildPartial();
                            }
                        } else if (readTag == 26) {
                            Regs regs = this.regs_;
                            Regs.Builder builder4 = regs != null ? regs.toBuilder() : null;
                            boolean z10 = z2;
                            Regs regs2 = (Regs) codedInputStream.readMessage(Regs.parser(), extensionRegistryLite);
                            boolean z11 = z2;
                            this.regs_ = regs2;
                            if (builder4 != null) {
                                builder4.mergeFrom(regs2);
                                boolean z12 = z2;
                                this.regs_ = builder4.buildPartial();
                            }
                        } else if (readTag == 34) {
                            Restrictions restrictions = this.restrictions_;
                            Restrictions.Builder builder5 = restrictions != null ? restrictions.toBuilder() : null;
                            boolean z13 = z2;
                            Restrictions restrictions2 = (Restrictions) codedInputStream.readMessage(Restrictions.parser(), extensionRegistryLite);
                            boolean z14 = z2;
                            this.restrictions_ = restrictions2;
                            if (builder5 != null) {
                                builder5.mergeFrom(restrictions2);
                                boolean z15 = z2;
                                this.restrictions_ = builder5.buildPartial();
                            }
                        } else if (readTag == 42) {
                            User user = this.user_;
                            User.Builder builder6 = user != null ? user.toBuilder() : null;
                            boolean z16 = z2;
                            User user2 = (User) codedInputStream.readMessage(User.parser(), extensionRegistryLite);
                            boolean z17 = z2;
                            this.user_ = user2;
                            if (builder6 != null) {
                                builder6.mergeFrom(user2);
                                boolean z18 = z2;
                                this.user_ = builder6.buildPartial();
                            }
                        } else if (readTag == 50) {
                            boolean z19 = z2;
                            if (!(z2 & true)) {
                                boolean z20 = z2;
                                boolean z21 = z2;
                                this.extProto_ = new ArrayList();
                                z19 = z2 | true;
                            }
                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                            z2 = z19;
                        } else if (readTag == 58) {
                            Struct struct = this.ext_;
                            builder = struct != null ? struct.toBuilder() : builder;
                            boolean z22 = z2;
                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                            boolean z23 = z2;
                            this.ext_ = struct2;
                            if (builder != null) {
                                builder.mergeFrom(struct2);
                                boolean z24 = z2;
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
            } catch (Throwable th) {
                if (z3 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z2 & true) {
            this.extProto_ = Collections.unmodifiableList(this.extProto_);
        }
        this.unknownFields = newBuilder.build();
        makeExtensionsImmutable();
    }

    private Context(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Context getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Context_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Context context) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(context);
    }

    public static Context parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Context parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Context parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Context parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Context parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Context parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Context parseFrom(InputStream inputStream) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Context parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Context parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Context parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Context parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Context parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Context> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Context)) {
            return super.equals(obj);
        }
        Context context = (Context) obj;
        if (hasApp() != context.hasApp()) {
            return false;
        }
        if ((hasApp() && !getApp().equals(context.getApp())) || hasDevice() != context.hasDevice()) {
            return false;
        }
        if ((hasDevice() && !getDevice().equals(context.getDevice())) || hasRegs() != context.hasRegs()) {
            return false;
        }
        if ((hasRegs() && !getRegs().equals(context.getRegs())) || hasRestrictions() != context.hasRestrictions()) {
            return false;
        }
        if ((hasRestrictions() && !getRestrictions().equals(context.getRestrictions())) || hasUser() != context.hasUser()) {
            return false;
        }
        if ((hasUser() && !getUser().equals(context.getUser())) || hasExt() != context.hasExt()) {
            return false;
        }
        return (!hasExt() || getExt().equals(context.getExt())) && getExtProtoList().equals(context.getExtProtoList()) && this.unknownFields.equals(context.unknownFields);
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final App getApp() {
        App app = this.app_;
        App app2 = app;
        if (app == null) {
            app2 = App.getDefaultInstance();
        }
        return app2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final AppOrBuilder getAppOrBuilder() {
        return getApp();
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Context getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final Device getDevice() {
        Device device = this.device_;
        Device device2 = device;
        if (device == null) {
            device2 = Device.getDefaultInstance();
        }
        return device2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final DeviceOrBuilder getDeviceOrBuilder() {
        return getDevice();
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final Struct getExt() {
        Struct struct = this.ext_;
        Struct struct2 = struct;
        if (struct == null) {
            struct2 = Struct.getDefaultInstance();
        }
        return struct2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final StructOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final Any getExtProto(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final int getExtProtoCount() {
        return this.extProto_.size();
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final List<Any> getExtProtoList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Context> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final Regs getRegs() {
        Regs regs = this.regs_;
        Regs regs2 = regs;
        if (regs == null) {
            regs2 = Regs.getDefaultInstance();
        }
        return regs2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final RegsOrBuilder getRegsOrBuilder() {
        return getRegs();
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final Restrictions getRestrictions() {
        Restrictions restrictions = this.restrictions_;
        Restrictions restrictions2 = restrictions;
        if (restrictions == null) {
            restrictions2 = Restrictions.getDefaultInstance();
        }
        return restrictions2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final RestrictionsOrBuilder getRestrictionsOrBuilder() {
        return getRestrictions();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeMessageSize = this.app_ != null ? CodedOutputStream.computeMessageSize(1, getApp()) + 0 : 0;
        int i2 = computeMessageSize;
        if (this.device_ != null) {
            i2 = computeMessageSize + CodedOutputStream.computeMessageSize(2, getDevice());
        }
        int i3 = i2;
        if (this.regs_ != null) {
            i3 = i2 + CodedOutputStream.computeMessageSize(3, getRegs());
        }
        int i4 = i3;
        if (this.restrictions_ != null) {
            i4 = i3 + CodedOutputStream.computeMessageSize(4, getRestrictions());
        }
        int i5 = i4;
        int i6 = 0;
        if (this.user_ != null) {
            i5 = i4 + CodedOutputStream.computeMessageSize(5, getUser());
            i6 = 0;
        }
        while (i6 < this.extProto_.size()) {
            i5 += CodedOutputStream.computeMessageSize(6, this.extProto_.get(i6));
            i6++;
        }
        int i7 = i5;
        if (this.ext_ != null) {
            i7 = i5 + CodedOutputStream.computeMessageSize(7, getExt());
        }
        int serializedSize = i7 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final User getUser() {
        User user = this.user_;
        User user2 = user;
        if (user == null) {
            user2 = User.getDefaultInstance();
        }
        return user2;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final UserOrBuilder getUserOrBuilder() {
        return getUser();
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasApp() {
        return this.app_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasDevice() {
        return this.device_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasRegs() {
        return this.regs_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasRestrictions() {
        return this.restrictions_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.ContextOrBuilder
    public final boolean hasUser() {
        return this.user_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = getDescriptor().hashCode() + 779;
        int i = hashCode;
        if (hasApp()) {
            i = (((hashCode * 37) + 1) * 53) + getApp().hashCode();
        }
        int i2 = i;
        if (hasDevice()) {
            i2 = (((i * 37) + 2) * 53) + getDevice().hashCode();
        }
        int i3 = i2;
        if (hasRegs()) {
            i3 = (((i2 * 37) + 3) * 53) + getRegs().hashCode();
        }
        int i4 = i3;
        if (hasRestrictions()) {
            i4 = (((i3 * 37) + 4) * 53) + getRestrictions().hashCode();
        }
        int i5 = i4;
        if (hasUser()) {
            i5 = (((i4 * 37) + 5) * 53) + getUser().hashCode();
        }
        int i6 = i5;
        if (hasExt()) {
            i6 = (((i5 * 37) + 7) * 53) + getExt().hashCode();
        }
        int i7 = i6;
        if (getExtProtoCount() > 0) {
            i7 = (((i6 * 37) + 6) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (i7 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return AdcomProto.f32965xdcb25d8c.ensureFieldAccessorsInitialized(Context.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Context();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.app_ != null) {
            codedOutputStream.writeMessage(1, getApp());
        }
        if (this.device_ != null) {
            codedOutputStream.writeMessage(2, getDevice());
        }
        if (this.regs_ != null) {
            codedOutputStream.writeMessage(3, getRegs());
        }
        if (this.restrictions_ != null) {
            codedOutputStream.writeMessage(4, getRestrictions());
        }
        if (this.user_ != null) {
            codedOutputStream.writeMessage(5, getUser());
        }
        for (int i = 0; i < this.extProto_.size(); i++) {
            codedOutputStream.writeMessage(6, this.extProto_.get(i));
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(7, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Method;
import com.explorestack.protobuf.Mixin;
import com.explorestack.protobuf.Option;
import com.explorestack.protobuf.SourceContext;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Api.class */
public final class Api extends GeneratedMessageV3 implements ApiOrBuilder {
    public static final int METHODS_FIELD_NUMBER = 2;
    public static final int MIXINS_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    public static final int VERSION_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Method> methods_;
    private List<Mixin> mixins_;
    private volatile Object name_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private volatile Object version_;
    private static final Api DEFAULT_INSTANCE = new Api();
    private static final Parser<Api> PARSER = new AbstractParser<Api>() { // from class: com.explorestack.protobuf.Api.1
        @Override // com.explorestack.protobuf.Parser
        public final Api parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Api(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Api$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ApiOrBuilder {
        private int bitField0_;
        private RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> methodsBuilder_;
        private List<Method> methods_;
        private RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> mixinsBuilder_;
        private List<Mixin> mixins_;
        private Object name_;
        private RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> optionsBuilder_;
        private List<Option> options_;
        private SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> sourceContextBuilder_;
        private SourceContext sourceContext_;
        private int syntax_;
        private Object version_;

        private Builder() {
            this.name_ = "";
            this.methods_ = Collections.emptyList();
            this.options_ = Collections.emptyList();
            this.version_ = "";
            this.mixins_ = Collections.emptyList();
            this.syntax_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.name_ = "";
            this.methods_ = Collections.emptyList();
            this.options_ = Collections.emptyList();
            this.version_ = "";
            this.mixins_ = Collections.emptyList();
            this.syntax_ = 0;
            maybeForceBuilderInitialization();
        }

        private void ensureMethodsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.methods_ = new ArrayList(this.methods_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureMixinsIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.mixins_ = new ArrayList(this.mixins_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureOptionsIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.options_ = new ArrayList(this.options_);
                this.bitField0_ |= 2;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ApiProto.internal_static_google_protobuf_Api_descriptor;
        }

        private RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> getMethodsFieldBuilder() {
            if (this.methodsBuilder_ == null) {
                List<Method> list = this.methods_;
                boolean z = true;
                if ((this.bitField0_ & 1) == 0) {
                    z = false;
                }
                this.methodsBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                this.methods_ = null;
            }
            return this.methodsBuilder_;
        }

        private RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> getMixinsFieldBuilder() {
            if (this.mixinsBuilder_ == null) {
                this.mixinsBuilder_ = new RepeatedFieldBuilderV3<>(this.mixins_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                this.mixins_ = null;
            }
            return this.mixinsBuilder_;
        }

        private RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> getOptionsFieldBuilder() {
            if (this.optionsBuilder_ == null) {
                this.optionsBuilder_ = new RepeatedFieldBuilderV3<>(this.options_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.options_ = null;
            }
            return this.optionsBuilder_;
        }

        private SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> getSourceContextFieldBuilder() {
            if (this.sourceContextBuilder_ == null) {
                this.sourceContextBuilder_ = new SingleFieldBuilderV3<>(getSourceContext(), getParentForChildren(), isClean());
                this.sourceContext_ = null;
            }
            return this.sourceContextBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getMethodsFieldBuilder();
                getOptionsFieldBuilder();
                getMixinsFieldBuilder();
            }
        }

        public final Builder addAllMethods(Iterable<? extends Method> iterable) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMethodsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.methods_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addAllMixins(Iterable<? extends Mixin> iterable) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMixinsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mixins_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addAllOptions(Iterable<? extends Option> iterable) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOptionsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.options_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addMethods(int i, Method.Builder builder) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMethodsIsMutable();
                this.methods_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addMethods(int i, Method method) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(method);
                ensureMethodsIsMutable();
                this.methods_.add(i, method);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, method);
            }
            return this;
        }

        public final Builder addMethods(Method.Builder builder) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMethodsIsMutable();
                this.methods_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addMethods(Method method) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(method);
                ensureMethodsIsMutable();
                this.methods_.add(method);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(method);
            }
            return this;
        }

        public final Method.Builder addMethodsBuilder() {
            return getMethodsFieldBuilder().addBuilder(Method.getDefaultInstance());
        }

        public final Method.Builder addMethodsBuilder(int i) {
            return getMethodsFieldBuilder().addBuilder(i, Method.getDefaultInstance());
        }

        public final Builder addMixins(int i, Mixin.Builder builder) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMixinsIsMutable();
                this.mixins_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addMixins(int i, Mixin mixin) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(mixin);
                ensureMixinsIsMutable();
                this.mixins_.add(i, mixin);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, mixin);
            }
            return this;
        }

        public final Builder addMixins(Mixin.Builder builder) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMixinsIsMutable();
                this.mixins_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addMixins(Mixin mixin) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(mixin);
                ensureMixinsIsMutable();
                this.mixins_.add(mixin);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(mixin);
            }
            return this;
        }

        public final Mixin.Builder addMixinsBuilder() {
            return getMixinsFieldBuilder().addBuilder(Mixin.getDefaultInstance());
        }

        public final Mixin.Builder addMixinsBuilder(int i) {
            return getMixinsFieldBuilder().addBuilder(i, Mixin.getDefaultInstance());
        }

        public final Builder addOptions(int i, Option.Builder builder) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOptionsIsMutable();
                this.options_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addOptions(int i, Option option) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(option);
                ensureOptionsIsMutable();
                this.options_.add(i, option);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, option);
            }
            return this;
        }

        public final Builder addOptions(Option.Builder builder) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOptionsIsMutable();
                this.options_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addOptions(Option option) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(option);
                ensureOptionsIsMutable();
                this.options_.add(option);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(option);
            }
            return this;
        }

        public final Option.Builder addOptionsBuilder() {
            return getOptionsFieldBuilder().addBuilder(Option.getDefaultInstance());
        }

        public final Option.Builder addOptionsBuilder(int i) {
            return getOptionsFieldBuilder().addBuilder(i, Option.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Api build() {
            Api buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Api buildPartial() {
            Api api = new Api(this);
            api.name_ = this.name_;
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.methods_ = Collections.unmodifiableList(this.methods_);
                    this.bitField0_ &= -2;
                }
                api.methods_ = this.methods_;
            } else {
                api.methods_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.optionsBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                if ((this.bitField0_ & 2) != 0) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                    this.bitField0_ &= -3;
                }
                api.options_ = this.options_;
            } else {
                api.options_ = repeatedFieldBuilderV32.build();
            }
            api.version_ = this.version_;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                api.sourceContext_ = this.sourceContext_;
            } else {
                api.sourceContext_ = singleFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV33 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV33 == null) {
                if ((this.bitField0_ & 4) != 0) {
                    this.mixins_ = Collections.unmodifiableList(this.mixins_);
                    this.bitField0_ &= -5;
                }
                api.mixins_ = this.mixins_;
            } else {
                api.mixins_ = repeatedFieldBuilderV33.build();
            }
            api.syntax_ = this.syntax_;
            onBuilt();
            return api;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.name_ = "";
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.methods_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.optionsBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.options_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            this.version_ = "";
            if (this.sourceContextBuilder_ == null) {
                this.sourceContext_ = null;
            } else {
                this.sourceContext_ = null;
                this.sourceContextBuilder_ = null;
            }
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV33 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV33 == null) {
                this.mixins_ = Collections.emptyList();
                this.bitField0_ &= -5;
            } else {
                repeatedFieldBuilderV33.clear();
            }
            this.syntax_ = 0;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearMethods() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.methods_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearMixins() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.mixins_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearName() {
            this.name_ = Api.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearOptions() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.options_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearSourceContext() {
            if (this.sourceContextBuilder_ == null) {
                this.sourceContext_ = null;
                onChanged();
            } else {
                this.sourceContext_ = null;
                this.sourceContextBuilder_ = null;
            }
            return this;
        }

        public final Builder clearSyntax() {
            this.syntax_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearVersion() {
            this.version_ = Api.getDefaultInstance().getVersion();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Api getDefaultInstanceForType() {
            return Api.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return ApiProto.internal_static_google_protobuf_Api_descriptor;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final Method getMethods(int i) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.methods_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Method.Builder getMethodsBuilder(int i) {
            return getMethodsFieldBuilder().getBuilder(i);
        }

        public final List<Method.Builder> getMethodsBuilderList() {
            return getMethodsFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final int getMethodsCount() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.methods_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<Method> getMethodsList() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.methods_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final MethodOrBuilder getMethodsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.methods_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.methods_);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final Mixin getMixins(int i) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.mixins_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Mixin.Builder getMixinsBuilder(int i) {
            return getMixinsFieldBuilder().getBuilder(i);
        }

        public final List<Mixin.Builder> getMixinsBuilderList() {
            return getMixinsFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final int getMixinsCount() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.mixins_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<Mixin> getMixinsList() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.mixins_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final MixinOrBuilder getMixinsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.mixins_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.mixins_);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final Option getOptions(int i) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.options_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Option.Builder getOptionsBuilder(int i) {
            return getOptionsFieldBuilder().getBuilder(i);
        }

        public final List<Option.Builder> getOptionsBuilderList() {
            return getOptionsFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.options_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.options_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final OptionOrBuilder getOptionsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.options_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.options_);
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final SourceContext getSourceContext() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                SourceContext sourceContext = this.sourceContext_;
                SourceContext sourceContext2 = sourceContext;
                if (sourceContext == null) {
                    sourceContext2 = SourceContext.getDefaultInstance();
                }
                return sourceContext2;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public final SourceContext.Builder getSourceContextBuilder() {
            onChanged();
            return getSourceContextFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final SourceContextOrBuilder getSourceContextOrBuilder() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            SourceContext sourceContext = this.sourceContext_;
            SourceContext sourceContext2 = sourceContext;
            if (sourceContext == null) {
                sourceContext2 = SourceContext.getDefaultInstance();
            }
            return sourceContext2;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final Syntax getSyntax() {
            Syntax valueOf = Syntax.valueOf(this.syntax_);
            Syntax syntax = valueOf;
            if (valueOf == null) {
                syntax = Syntax.UNRECOGNIZED;
            }
            return syntax;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final int getSyntaxValue() {
            return this.syntax_;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final String getVersion() {
            Object obj = this.version_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.version_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final ByteString getVersionBytes() {
            Object obj = this.version_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.version_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.ApiOrBuilder
        public final boolean hasSourceContext() {
            return (this.sourceContextBuilder_ == null && this.sourceContext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ApiProto.internal_static_google_protobuf_Api_fieldAccessorTable.ensureFieldAccessorsInitialized(Api.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeFrom(Api api) {
            if (api == Api.getDefaultInstance()) {
                return this;
            }
            if (!api.getName().isEmpty()) {
                this.name_ = api.name_;
                onChanged();
            }
            if (this.methodsBuilder_ == null) {
                if (!api.methods_.isEmpty()) {
                    if (this.methods_.isEmpty()) {
                        this.methods_ = api.methods_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMethodsIsMutable();
                        this.methods_.addAll(api.methods_);
                    }
                    onChanged();
                }
            } else if (!api.methods_.isEmpty()) {
                if (this.methodsBuilder_.isEmpty()) {
                    this.methodsBuilder_.dispose();
                    this.methodsBuilder_ = null;
                    this.methods_ = api.methods_;
                    this.bitField0_ &= -2;
                    this.methodsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMethodsFieldBuilder() : null;
                } else {
                    this.methodsBuilder_.addAllMessages(api.methods_);
                }
            }
            if (this.optionsBuilder_ == null) {
                if (!api.options_.isEmpty()) {
                    if (this.options_.isEmpty()) {
                        this.options_ = api.options_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureOptionsIsMutable();
                        this.options_.addAll(api.options_);
                    }
                    onChanged();
                }
            } else if (!api.options_.isEmpty()) {
                if (this.optionsBuilder_.isEmpty()) {
                    this.optionsBuilder_.dispose();
                    this.optionsBuilder_ = null;
                    this.options_ = api.options_;
                    this.bitField0_ &= -3;
                    this.optionsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getOptionsFieldBuilder() : null;
                } else {
                    this.optionsBuilder_.addAllMessages(api.options_);
                }
            }
            if (!api.getVersion().isEmpty()) {
                this.version_ = api.version_;
                onChanged();
            }
            if (api.hasSourceContext()) {
                mergeSourceContext(api.getSourceContext());
            }
            if (this.mixinsBuilder_ == null) {
                if (!api.mixins_.isEmpty()) {
                    if (this.mixins_.isEmpty()) {
                        this.mixins_ = api.mixins_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureMixinsIsMutable();
                        this.mixins_.addAll(api.mixins_);
                    }
                    onChanged();
                }
            } else if (!api.mixins_.isEmpty()) {
                if (this.mixinsBuilder_.isEmpty()) {
                    this.mixinsBuilder_.dispose();
                    this.mixinsBuilder_ = null;
                    this.mixins_ = api.mixins_;
                    this.bitField0_ &= -5;
                    RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = null;
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getMixinsFieldBuilder();
                    }
                    this.mixinsBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.mixinsBuilder_.addAllMessages(api.mixins_);
                }
            }
            if (api.syntax_ != 0) {
                setSyntaxValue(api.getSyntaxValue());
            }
            mergeUnknownFields(api.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.explorestack.protobuf.Api.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.Api.access$1000()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                com.explorestack.protobuf.Api r0 = (com.explorestack.protobuf.Api) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L1a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.Api$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.Api r0 = (com.explorestack.protobuf.Api) r0     // Catch: java.lang.Throwable -> L1c
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
                com.explorestack.protobuf.Api$Builder r0 = r0.mergeFrom(r1)
            L3b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Api.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.Api$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Api) {
                return mergeFrom((Api) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeSourceContext(SourceContext sourceContext) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                SourceContext sourceContext2 = this.sourceContext_;
                if (sourceContext2 != null) {
                    this.sourceContext_ = SourceContext.newBuilder(sourceContext2).mergeFrom(sourceContext).buildPartial();
                } else {
                    this.sourceContext_ = sourceContext;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(sourceContext);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder removeMethods(int i) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMethodsIsMutable();
                this.methods_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder removeMixins(int i) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMixinsIsMutable();
                this.mixins_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder removeOptions(int i) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOptionsIsMutable();
                this.options_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setMethods(int i, Method.Builder builder) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMethodsIsMutable();
                this.methods_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setMethods(int i, Method method) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.methodsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(method);
                ensureMethodsIsMutable();
                this.methods_.set(i, method);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, method);
            }
            return this;
        }

        public final Builder setMixins(int i, Mixin.Builder builder) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMixinsIsMutable();
                this.mixins_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setMixins(int i, Mixin mixin) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.mixinsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(mixin);
                ensureMixinsIsMutable();
                this.mixins_.set(i, mixin);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, mixin);
            }
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
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setOptions(int i, Option.Builder builder) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOptionsIsMutable();
                this.options_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setOptions(int i, Option option) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(option);
                ensureOptionsIsMutable();
                this.options_.set(i, option);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, option);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSourceContext(SourceContext.Builder builder) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.sourceContext_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setSourceContext(SourceContext sourceContext) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.sourceContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(sourceContext);
                this.sourceContext_ = sourceContext;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(sourceContext);
            }
            return this;
        }

        public final Builder setSyntax(Syntax syntax) {
            Objects.requireNonNull(syntax);
            this.syntax_ = syntax.getNumber();
            onChanged();
            return this;
        }

        public final Builder setSyntaxValue(int i) {
            this.syntax_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setVersion(String str) {
            Objects.requireNonNull(str);
            this.version_ = str;
            onChanged();
            return this;
        }

        public final Builder setVersionBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.version_ = byteString;
            onChanged();
            return this;
        }
    }

    private Api() {
        this.memoizedIsInitialized = (byte) (-1);
        this.name_ = "";
        this.methods_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.version_ = "";
        this.mixins_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Api(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.name_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            boolean z4 = z2;
                            if (!(z2 & true)) {
                                boolean z5 = z2;
                                boolean z6 = z2;
                                this.methods_ = new ArrayList();
                                z4 = z2 | true;
                            }
                            this.methods_.add(codedInputStream.readMessage(Method.parser(), extensionRegistryLite));
                            z2 = z4;
                        } else if (readTag == 26) {
                            boolean z7 = z2;
                            if (!(z2 & true)) {
                                boolean z8 = z2;
                                boolean z9 = z2;
                                this.options_ = new ArrayList();
                                z7 = z2 | true;
                            }
                            this.options_.add(codedInputStream.readMessage(Option.parser(), extensionRegistryLite));
                            z2 = z7;
                        } else if (readTag == 34) {
                            this.version_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 42) {
                            SourceContext.Builder builder = null;
                            SourceContext sourceContext = this.sourceContext_;
                            builder = sourceContext != null ? sourceContext.toBuilder() : builder;
                            boolean z10 = z2;
                            SourceContext sourceContext2 = (SourceContext) codedInputStream.readMessage(SourceContext.parser(), extensionRegistryLite);
                            boolean z11 = z2;
                            this.sourceContext_ = sourceContext2;
                            if (builder != null) {
                                builder.mergeFrom(sourceContext2);
                                boolean z12 = z2;
                                this.sourceContext_ = builder.buildPartial();
                            }
                        } else if (readTag == 50) {
                            boolean z13 = z2;
                            if (!(z2 & true)) {
                                boolean z14 = z2;
                                boolean z15 = z2;
                                this.mixins_ = new ArrayList();
                                z13 = z2 | true;
                            }
                            this.mixins_.add(codedInputStream.readMessage(Mixin.parser(), extensionRegistryLite));
                            z2 = z13;
                        } else if (readTag == 56) {
                            this.syntax_ = codedInputStream.readEnum();
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
                    this.methods_ = Collections.unmodifiableList(this.methods_);
                }
                if (z3 & true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                if (z3 & true) {
                    this.mixins_ = Collections.unmodifiableList(this.mixins_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z2 & true) {
            this.methods_ = Collections.unmodifiableList(this.methods_);
        }
        if (z2 & true) {
            this.options_ = Collections.unmodifiableList(this.options_);
        }
        if (z2 & true) {
            this.mixins_ = Collections.unmodifiableList(this.mixins_);
        }
        this.unknownFields = newBuilder.build();
        makeExtensionsImmutable();
    }

    private Api(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Api getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ApiProto.internal_static_google_protobuf_Api_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Api api) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(api);
    }

    public static Api parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Api parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Api parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Api parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Api parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Api parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Api parseFrom(InputStream inputStream) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Api parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Api parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Api parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Api parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Api parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Api> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Api)) {
            return super.equals(obj);
        }
        Api api = (Api) obj;
        if (!getName().equals(api.getName()) || !getMethodsList().equals(api.getMethodsList()) || !getOptionsList().equals(api.getOptionsList()) || !getVersion().equals(api.getVersion()) || hasSourceContext() != api.hasSourceContext()) {
            return false;
        }
        return (!hasSourceContext() || getSourceContext().equals(api.getSourceContext())) && getMixinsList().equals(api.getMixinsList()) && this.syntax_ == api.syntax_ && this.unknownFields.equals(api.unknownFields);
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Api getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final Method getMethods(int i) {
        return this.methods_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final int getMethodsCount() {
        return this.methods_.size();
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<Method> getMethodsList() {
        return this.methods_;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final MethodOrBuilder getMethodsOrBuilder(int i) {
        return this.methods_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
        return this.methods_;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final Mixin getMixins(int i) {
        return this.mixins_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final int getMixinsCount() {
        return this.mixins_.size();
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<Mixin> getMixinsList() {
        return this.mixins_;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final MixinOrBuilder getMixinsOrBuilder(int i) {
        return this.mixins_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
        return this.mixins_;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final Option getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Api> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.methods_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(2, this.methods_.get(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            computeStringSize += CodedOutputStream.computeMessageSize(3, this.options_.get(i3));
        }
        int i4 = computeStringSize;
        if (!getVersionBytes().isEmpty()) {
            i4 = computeStringSize + GeneratedMessageV3.computeStringSize(4, this.version_);
        }
        int i5 = i4;
        int i6 = 0;
        if (this.sourceContext_ != null) {
            i5 = i4 + CodedOutputStream.computeMessageSize(5, getSourceContext());
            i6 = 0;
        }
        while (i6 < this.mixins_.size()) {
            i5 += CodedOutputStream.computeMessageSize(6, this.mixins_.get(i6));
            i6++;
        }
        int i7 = i5;
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            i7 = i5 + CodedOutputStream.computeEnumSize(7, this.syntax_);
        }
        int serializedSize = i7 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        SourceContext sourceContext2 = sourceContext;
        if (sourceContext == null) {
            sourceContext2 = SourceContext.getDefaultInstance();
        }
        return sourceContext2;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final SourceContextOrBuilder getSourceContextOrBuilder() {
        return getSourceContext();
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final Syntax getSyntax() {
        Syntax valueOf = Syntax.valueOf(this.syntax_);
        Syntax syntax = valueOf;
        if (valueOf == null) {
            syntax = Syntax.UNRECOGNIZED;
        }
        return syntax;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final String getVersion() {
        Object obj = this.version_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.version_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final ByteString getVersionBytes() {
        Object obj = this.version_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.version_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.ApiOrBuilder
    public final boolean hasSourceContext() {
        return this.sourceContext_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getName().hashCode();
        int i = hashCode;
        if (getMethodsCount() > 0) {
            i = (((hashCode * 37) + 2) * 53) + getMethodsList().hashCode();
        }
        int i2 = i;
        if (getOptionsCount() > 0) {
            i2 = (((i * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((i2 * 37) + 4) * 53) + getVersion().hashCode();
        int i3 = hashCode2;
        if (hasSourceContext()) {
            i3 = (((hashCode2 * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        int i4 = i3;
        if (getMixinsCount() > 0) {
            i4 = (((i3 * 37) + 6) * 53) + getMixinsList().hashCode();
        }
        int hashCode3 = (((((i4 * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ApiProto.internal_static_google_protobuf_Api_fieldAccessorTable.ensureFieldAccessorsInitialized(Api.class, Builder.class);
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
        return new Api();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i = 0; i < this.methods_.size(); i++) {
            codedOutputStream.writeMessage(2, this.methods_.get(i));
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            codedOutputStream.writeMessage(3, this.options_.get(i2));
        }
        if (!getVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.version_);
        }
        int i3 = 0;
        if (this.sourceContext_ != null) {
            codedOutputStream.writeMessage(5, getSourceContext());
            i3 = 0;
        }
        while (i3 < this.mixins_.size()) {
            codedOutputStream.writeMessage(6, this.mixins_.get(i3));
            i3++;
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.writeEnum(7, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

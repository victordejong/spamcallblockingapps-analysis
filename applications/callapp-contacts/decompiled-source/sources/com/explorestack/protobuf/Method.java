package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Option;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Method.class */
public final class Method extends GeneratedMessageV3 implements MethodOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 6;
    public static final int REQUEST_STREAMING_FIELD_NUMBER = 3;
    public static final int REQUEST_TYPE_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_STREAMING_FIELD_NUMBER = 5;
    public static final int RESPONSE_TYPE_URL_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Option> options_;
    private boolean requestStreaming_;
    private volatile Object requestTypeUrl_;
    private boolean responseStreaming_;
    private volatile Object responseTypeUrl_;
    private int syntax_;
    private static final Method DEFAULT_INSTANCE = new Method();
    private static final Parser<Method> PARSER = new AbstractParser<Method>() { // from class: com.explorestack.protobuf.Method.1
        @Override // com.explorestack.protobuf.Parser
        public final Method parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Method(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Method$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MethodOrBuilder {
        private int bitField0_;
        private Object name_;
        private RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> optionsBuilder_;
        private List<Option> options_;
        private boolean requestStreaming_;
        private Object requestTypeUrl_;
        private boolean responseStreaming_;
        private Object responseTypeUrl_;
        private int syntax_;

        private Builder() {
            this.name_ = "";
            this.requestTypeUrl_ = "";
            this.responseTypeUrl_ = "";
            this.options_ = Collections.emptyList();
            this.syntax_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.name_ = "";
            this.requestTypeUrl_ = "";
            this.responseTypeUrl_ = "";
            this.options_ = Collections.emptyList();
            this.syntax_ = 0;
            maybeForceBuilderInitialization();
        }

        private void ensureOptionsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.options_ = new ArrayList(this.options_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ApiProto.internal_static_google_protobuf_Method_descriptor;
        }

        private RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> getOptionsFieldBuilder() {
            if (this.optionsBuilder_ == null) {
                List<Option> list = this.options_;
                boolean z = true;
                if ((this.bitField0_ & 1) == 0) {
                    z = false;
                }
                this.optionsBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                this.options_ = null;
            }
            return this.optionsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getOptionsFieldBuilder();
            }
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
        public final Method build() {
            Method buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Method buildPartial() {
            Method method = new Method(this);
            method.name_ = this.name_;
            method.requestTypeUrl_ = this.requestTypeUrl_;
            method.requestStreaming_ = this.requestStreaming_;
            method.responseTypeUrl_ = this.responseTypeUrl_;
            method.responseStreaming_ = this.responseStreaming_;
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                    this.bitField0_ &= -2;
                }
                method.options_ = this.options_;
            } else {
                method.options_ = repeatedFieldBuilderV3.build();
            }
            method.syntax_ = this.syntax_;
            onBuilt();
            return method;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.name_ = "";
            this.requestTypeUrl_ = "";
            this.requestStreaming_ = false;
            this.responseTypeUrl_ = "";
            this.responseStreaming_ = false;
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.options_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.syntax_ = 0;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearName() {
            this.name_ = Method.getDefaultInstance().getName();
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
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearRequestStreaming() {
            this.requestStreaming_ = false;
            onChanged();
            return this;
        }

        public final Builder clearRequestTypeUrl() {
            this.requestTypeUrl_ = Method.getDefaultInstance().getRequestTypeUrl();
            onChanged();
            return this;
        }

        public final Builder clearResponseStreaming() {
            this.responseStreaming_ = false;
            onChanged();
            return this;
        }

        public final Builder clearResponseTypeUrl() {
            this.responseTypeUrl_ = Method.getDefaultInstance().getResponseTypeUrl();
            onChanged();
            return this;
        }

        public final Builder clearSyntax() {
            this.syntax_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Method getDefaultInstanceForType() {
            return Method.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return ApiProto.internal_static_google_protobuf_Method_descriptor;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
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

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.options_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.options_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final OptionOrBuilder getOptionsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.options_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.optionsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.options_);
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final boolean getRequestStreaming() {
            return this.requestStreaming_;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final String getRequestTypeUrl() {
            Object obj = this.requestTypeUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.requestTypeUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final ByteString getRequestTypeUrlBytes() {
            Object obj = this.requestTypeUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.requestTypeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final boolean getResponseStreaming() {
            return this.responseStreaming_;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final String getResponseTypeUrl() {
            Object obj = this.responseTypeUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.responseTypeUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final ByteString getResponseTypeUrlBytes() {
            Object obj = this.responseTypeUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.responseTypeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final Syntax getSyntax() {
            Syntax valueOf = Syntax.valueOf(this.syntax_);
            Syntax syntax = valueOf;
            if (valueOf == null) {
                syntax = Syntax.UNRECOGNIZED;
            }
            return syntax;
        }

        @Override // com.explorestack.protobuf.MethodOrBuilder
        public final int getSyntaxValue() {
            return this.syntax_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ApiProto.internal_static_google_protobuf_Method_fieldAccessorTable.ensureFieldAccessorsInitialized(Method.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.explorestack.protobuf.Method.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.Method.access$1000()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                com.explorestack.protobuf.Method r0 = (com.explorestack.protobuf.Method) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.Method$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.Method r0 = (com.explorestack.protobuf.Method) r0     // Catch: all -> 0x001c
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
                com.explorestack.protobuf.Method$Builder r0 = r0.mergeFrom(r1)
            L_0x0041:
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Method.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.Method$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Method) {
                return mergeFrom((Method) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Method method) {
            if (method == Method.getDefaultInstance()) {
                return this;
            }
            if (!method.getName().isEmpty()) {
                this.name_ = method.name_;
                onChanged();
            }
            if (!method.getRequestTypeUrl().isEmpty()) {
                this.requestTypeUrl_ = method.requestTypeUrl_;
                onChanged();
            }
            if (method.getRequestStreaming()) {
                setRequestStreaming(method.getRequestStreaming());
            }
            if (!method.getResponseTypeUrl().isEmpty()) {
                this.responseTypeUrl_ = method.responseTypeUrl_;
                onChanged();
            }
            if (method.getResponseStreaming()) {
                setResponseStreaming(method.getResponseStreaming());
            }
            if (this.optionsBuilder_ == null) {
                if (!method.options_.isEmpty()) {
                    if (this.options_.isEmpty()) {
                        this.options_ = method.options_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureOptionsIsMutable();
                        this.options_.addAll(method.options_);
                    }
                    onChanged();
                }
            } else if (!method.options_.isEmpty()) {
                if (this.optionsBuilder_.isEmpty()) {
                    this.optionsBuilder_.dispose();
                    RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = null;
                    this.optionsBuilder_ = null;
                    this.options_ = method.options_;
                    this.bitField0_ &= -2;
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getOptionsFieldBuilder();
                    }
                    this.optionsBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.optionsBuilder_.addAllMessages(method.options_);
                }
            }
            if (method.syntax_ != 0) {
                setSyntaxValue(method.getSyntaxValue());
            }
            mergeUnknownFields(method.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
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

        public final Builder setRequestStreaming(boolean z) {
            this.requestStreaming_ = z;
            onChanged();
            return this;
        }

        public final Builder setRequestTypeUrl(String str) {
            Objects.requireNonNull(str);
            this.requestTypeUrl_ = str;
            onChanged();
            return this;
        }

        public final Builder setRequestTypeUrlBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.requestTypeUrl_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setResponseStreaming(boolean z) {
            this.responseStreaming_ = z;
            onChanged();
            return this;
        }

        public final Builder setResponseTypeUrl(String str) {
            Objects.requireNonNull(str);
            this.responseTypeUrl_ = str;
            onChanged();
            return this;
        }

        public final Builder setResponseTypeUrlBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.responseTypeUrl_ = byteString;
            onChanged();
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
    }

    private Method() {
        this.memoizedIsInitialized = (byte) (-1);
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.responseTypeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.name_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            this.requestTypeUrl_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 24) {
                            this.requestStreaming_ = codedInputStream.readBool();
                        } else if (readTag == 34) {
                            this.responseTypeUrl_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 40) {
                            this.responseStreaming_ = codedInputStream.readBool();
                        } else if (readTag == 50) {
                            z2 = z2;
                            if (!z2 || !true) {
                                this.options_ = new ArrayList();
                                z2 |= true;
                            }
                            this.options_.add(codedInputStream.readMessage(Option.parser(), extensionRegistryLite));
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
            } finally {
                if (z2 && true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private Method(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Method getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ApiProto.internal_static_google_protobuf_Method_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Method method) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(method);
    }

    public static Method parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Method parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Method parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Method parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Method parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Method parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Method parseFrom(InputStream inputStream) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Method parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Method parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Method parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Method parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Method parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Method> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Method)) {
            return super.equals(obj);
        }
        Method method = (Method) obj;
        return getName().equals(method.getName()) && getRequestTypeUrl().equals(method.getRequestTypeUrl()) && getRequestStreaming() == method.getRequestStreaming() && getResponseTypeUrl().equals(method.getResponseTypeUrl()) && getResponseStreaming() == method.getResponseStreaming() && getOptionsList().equals(method.getOptionsList()) && this.syntax_ == method.syntax_ && this.unknownFields.equals(method.unknownFields);
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Method getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final Option getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Method> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final boolean getRequestStreaming() {
        return this.requestStreaming_;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final String getRequestTypeUrl() {
        Object obj = this.requestTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final ByteString getRequestTypeUrlBytes() {
        Object obj = this.requestTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.requestTypeUrl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final boolean getResponseStreaming() {
        return this.responseStreaming_;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final String getResponseTypeUrl() {
        Object obj = this.responseTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final ByteString getResponseTypeUrlBytes() {
        Object obj = this.responseTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.responseTypeUrl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        int i2 = computeStringSize;
        if (!getRequestTypeUrlBytes().isEmpty()) {
            i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        int i3 = i2;
        if (z) {
            i3 = i2 + CodedOutputStream.computeBoolSize(3, z);
        }
        int i4 = i3;
        if (!getResponseTypeUrlBytes().isEmpty()) {
            i4 = i3 + GeneratedMessageV3.computeStringSize(4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        int i5 = i4;
        int i6 = 0;
        if (z2) {
            i5 = i4 + CodedOutputStream.computeBoolSize(5, z2);
            i6 = 0;
        }
        while (i6 < this.options_.size()) {
            i5 += CodedOutputStream.computeMessageSize(6, this.options_.get(i6));
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

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final Syntax getSyntax() {
        Syntax valueOf = Syntax.valueOf(this.syntax_);
        Syntax syntax = valueOf;
        if (valueOf == null) {
            syntax = Syntax.UNRECOGNIZED;
        }
        return syntax;
    }

    @Override // com.explorestack.protobuf.MethodOrBuilder
    public final int getSyntaxValue() {
        return this.syntax_;
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
        int hashCode = ((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRequestTypeUrl().hashCode()) * 37) + 3) * 53) + Internal.hashBoolean(getRequestStreaming())) * 37) + 4) * 53) + getResponseTypeUrl().hashCode()) * 37) + 5) * 53) + Internal.hashBoolean(getResponseStreaming());
        int i = hashCode;
        if (getOptionsCount() > 0) {
            i = (((hashCode * 37) + 6) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((((i * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ApiProto.internal_static_google_protobuf_Method_fieldAccessorTable.ensureFieldAccessorsInitialized(Method.class, Builder.class);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Method();
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
        if (!getRequestTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        if (z) {
            codedOutputStream.writeBool(3, z);
        }
        if (!getResponseTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        if (z2) {
            codedOutputStream.writeBool(5, z2);
        }
        for (int i = 0; i < this.options_.size(); i++) {
            codedOutputStream.writeMessage(6, this.options_.get(i));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.writeEnum(7, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

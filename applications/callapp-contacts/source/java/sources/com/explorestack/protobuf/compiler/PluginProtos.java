package com.explorestack.protobuf.compiler;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.DescriptorProtos;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.LazyStringArrayList;
import com.explorestack.protobuf.LazyStringList;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos.class */
public final class PluginProtos {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"º\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"ª\u0001\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a>\n\u0004File\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\tBg\n\u001ccom.google.protobuf.compilerB\fPluginProtosZ9github.com/golang/protobuf/protoc-gen-go/plugin;plugin_go"}, new Descriptors.FileDescriptor[]{DescriptorProtos.getDescriptor()});

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor */
    private static final Descriptors.Descriptor f33008x36d642;

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable */
    private static final GeneratedMessageV3.FieldAccessorTable f33009xfc149ac0;

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor */
    private static final Descriptors.Descriptor f33010xcaba06d7;

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable */
    private static final GeneratedMessageV3.FieldAccessorTable f33011xb43c6655;

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor */
    private static final Descriptors.Descriptor f33012x140ff76a;

    /* renamed from: internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable */
    private static final GeneratedMessageV3.FieldAccessorTable f33013x23ee13e8;
    private static final Descriptors.Descriptor internal_static_google_protobuf_compiler_Version_descriptor;

    /* renamed from: internal_static_google_protobuf_compiler_Version_fieldAccessorTable */
    private static final GeneratedMessageV3.FieldAccessorTable f33014xc9007e77;

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest.class */
    public static final class CodeGeneratorRequest extends GeneratedMessageV3 implements CodeGeneratorRequestOrBuilder {
        public static final int COMPILER_VERSION_FIELD_NUMBER = 3;
        public static final int FILE_TO_GENERATE_FIELD_NUMBER = 1;
        public static final int PARAMETER_FIELD_NUMBER = 2;
        public static final int PROTO_FILE_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Version compilerVersion_;
        private LazyStringList fileToGenerate_;
        private byte memoizedIsInitialized;
        private volatile Object parameter_;
        private List<DescriptorProtos.FileDescriptorProto> protoFile_;
        private static final CodeGeneratorRequest DEFAULT_INSTANCE = new CodeGeneratorRequest();
        @Deprecated
        public static final Parser<CodeGeneratorRequest> PARSER = new AbstractParser<CodeGeneratorRequest>() { // from class: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest.1
            @Override // com.explorestack.protobuf.Parser
            public final CodeGeneratorRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CodeGeneratorRequest(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CodeGeneratorRequestOrBuilder {
            private int bitField0_;
            private SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> compilerVersionBuilder_;
            private Version compilerVersion_;
            private LazyStringList fileToGenerate_;
            private Object parameter_;
            private RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> protoFileBuilder_;
            private List<DescriptorProtos.FileDescriptorProto> protoFile_;

            private Builder() {
                this.fileToGenerate_ = LazyStringArrayList.EMPTY;
                this.parameter_ = "";
                this.protoFile_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.fileToGenerate_ = LazyStringArrayList.EMPTY;
                this.parameter_ = "";
                this.protoFile_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureFileToGenerateIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.fileToGenerate_ = new LazyStringArrayList(this.fileToGenerate_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureProtoFileIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.protoFile_ = new ArrayList(this.protoFile_);
                    this.bitField0_ |= 4;
                }
            }

            private SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> getCompilerVersionFieldBuilder() {
                if (this.compilerVersionBuilder_ == null) {
                    this.compilerVersionBuilder_ = new SingleFieldBuilderV3<>(getCompilerVersion(), getParentForChildren(), isClean());
                    this.compilerVersion_ = null;
                }
                return this.compilerVersionBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PluginProtos.f33008x36d642;
            }

            private RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileFieldBuilder() {
                if (this.protoFileBuilder_ == null) {
                    this.protoFileBuilder_ = new RepeatedFieldBuilderV3<>(this.protoFile_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.protoFile_ = null;
                }
                return this.protoFileBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (CodeGeneratorRequest.alwaysUseFieldBuilders) {
                    getProtoFileFieldBuilder();
                    getCompilerVersionFieldBuilder();
                }
            }

            public final Builder addAllFileToGenerate(Iterable<String> iterable) {
                ensureFileToGenerateIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.fileToGenerate_);
                onChanged();
                return this;
            }

            public final Builder addAllProtoFile(Iterable<? extends DescriptorProtos.FileDescriptorProto> iterable) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureProtoFileIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.protoFile_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addFileToGenerate(String str) {
                Objects.requireNonNull(str);
                ensureFileToGenerateIsMutable();
                this.fileToGenerate_.add(str);
                onChanged();
                return this;
            }

            public final Builder addFileToGenerateBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ensureFileToGenerateIsMutable();
                this.fileToGenerate_.add(byteString);
                onChanged();
                return this;
            }

            public final Builder addProtoFile(int i, DescriptorProtos.FileDescriptorProto.Builder builder) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureProtoFileIsMutable();
                    this.protoFile_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addProtoFile(int i, DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(fileDescriptorProto);
                    ensureProtoFileIsMutable();
                    this.protoFile_.add(i, fileDescriptorProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, fileDescriptorProto);
                }
                return this;
            }

            public final Builder addProtoFile(DescriptorProtos.FileDescriptorProto.Builder builder) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureProtoFileIsMutable();
                    this.protoFile_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addProtoFile(DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(fileDescriptorProto);
                    ensureProtoFileIsMutable();
                    this.protoFile_.add(fileDescriptorProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(fileDescriptorProto);
                }
                return this;
            }

            public final DescriptorProtos.FileDescriptorProto.Builder addProtoFileBuilder() {
                return getProtoFileFieldBuilder().addBuilder(DescriptorProtos.FileDescriptorProto.getDefaultInstance());
            }

            public final DescriptorProtos.FileDescriptorProto.Builder addProtoFileBuilder(int i) {
                return getProtoFileFieldBuilder().addBuilder(i, DescriptorProtos.FileDescriptorProto.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final CodeGeneratorRequest build() {
                CodeGeneratorRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final CodeGeneratorRequest buildPartial() {
                CodeGeneratorRequest codeGeneratorRequest = new CodeGeneratorRequest(this);
                int i = this.bitField0_;
                if ((i & 1) != 0) {
                    this.fileToGenerate_ = this.fileToGenerate_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                codeGeneratorRequest.fileToGenerate_ = this.fileToGenerate_;
                int i2 = (i & 2) != 0 ? 1 : 0;
                codeGeneratorRequest.parameter_ = this.parameter_;
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.protoFile_ = Collections.unmodifiableList(this.protoFile_);
                        this.bitField0_ &= -5;
                    }
                    codeGeneratorRequest.protoFile_ = this.protoFile_;
                } else {
                    codeGeneratorRequest.protoFile_ = repeatedFieldBuilderV3.build();
                }
                int i3 = i2;
                if ((i & 8) != 0) {
                    SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        codeGeneratorRequest.compilerVersion_ = this.compilerVersion_;
                    } else {
                        codeGeneratorRequest.compilerVersion_ = singleFieldBuilderV3.build();
                    }
                    i3 = i2 | 2;
                }
                codeGeneratorRequest.bitField0_ = i3;
                onBuilt();
                return codeGeneratorRequest;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.fileToGenerate_ = LazyStringArrayList.EMPTY;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.parameter_ = "";
                this.bitField0_ = i & (-3);
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.protoFile_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.compilerVersion_ = null;
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearCompilerVersion() {
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.compilerVersion_ = null;
                    onChanged();
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            public final Builder clearFileToGenerate() {
                this.fileToGenerate_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearParameter() {
                this.bitField0_ &= -3;
                this.parameter_ = CodeGeneratorRequest.getDefaultInstance().getParameter();
                onChanged();
                return this;
            }

            public final Builder clearProtoFile() {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.protoFile_ = Collections.emptyList();
                    this.bitField0_ &= -5;
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

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final Version getCompilerVersion() {
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Version version = this.compilerVersion_;
                    Version version2 = version;
                    if (version == null) {
                        version2 = Version.getDefaultInstance();
                    }
                    return version2;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public final Version.Builder getCompilerVersionBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getCompilerVersionFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final VersionOrBuilder getCompilerVersionOrBuilder() {
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Version version = this.compilerVersion_;
                Version version2 = version;
                if (version == null) {
                    version2 = Version.getDefaultInstance();
                }
                return version2;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final CodeGeneratorRequest getDefaultInstanceForType() {
                return CodeGeneratorRequest.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return PluginProtos.f33008x36d642;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final String getFileToGenerate(int i) {
                return (String) this.fileToGenerate_.get(i);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final ByteString getFileToGenerateBytes(int i) {
                return this.fileToGenerate_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final int getFileToGenerateCount() {
                return this.fileToGenerate_.size();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final ProtocolStringList getFileToGenerateList() {
                return this.fileToGenerate_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final String getParameter() {
                Object obj = this.parameter_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.parameter_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final ByteString getParameterBytes() {
                Object obj = this.parameter_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.parameter_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final DescriptorProtos.FileDescriptorProto getProtoFile(int i) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.protoFile_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final DescriptorProtos.FileDescriptorProto.Builder getProtoFileBuilder(int i) {
                return getProtoFileFieldBuilder().getBuilder(i);
            }

            public final List<DescriptorProtos.FileDescriptorProto.Builder> getProtoFileBuilderList() {
                return getProtoFileFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final int getProtoFileCount() {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.protoFile_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final List<DescriptorProtos.FileDescriptorProto> getProtoFileList() {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.protoFile_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.protoFile_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList() {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.protoFile_);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final boolean hasCompilerVersion() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
            public final boolean hasParameter() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f33009xfc149ac0.ensureFieldAccessorsInitialized(CodeGeneratorRequest.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getProtoFileCount(); i++) {
                    if (!getProtoFile(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public final Builder mergeCompilerVersion(Version version) {
                Version version2;
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 8) == 0 || (version2 = this.compilerVersion_) == null || version2 == Version.getDefaultInstance()) {
                        this.compilerVersion_ = version;
                    } else {
                        this.compilerVersion_ = Version.newBuilder(this.compilerVersion_).mergeFrom(version).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(version);
                }
                this.bitField0_ |= 8;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser<com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest> r0 = com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest.PARSER     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest) r0     // Catch: java.lang.Throwable -> L1c
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
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequest.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorRequest$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CodeGeneratorRequest) {
                    return mergeFrom((CodeGeneratorRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CodeGeneratorRequest codeGeneratorRequest) {
                if (codeGeneratorRequest == CodeGeneratorRequest.getDefaultInstance()) {
                    return this;
                }
                if (!codeGeneratorRequest.fileToGenerate_.isEmpty()) {
                    if (this.fileToGenerate_.isEmpty()) {
                        this.fileToGenerate_ = codeGeneratorRequest.fileToGenerate_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureFileToGenerateIsMutable();
                        this.fileToGenerate_.addAll(codeGeneratorRequest.fileToGenerate_);
                    }
                    onChanged();
                }
                if (codeGeneratorRequest.hasParameter()) {
                    this.bitField0_ |= 2;
                    this.parameter_ = codeGeneratorRequest.parameter_;
                    onChanged();
                }
                if (this.protoFileBuilder_ == null) {
                    if (!codeGeneratorRequest.protoFile_.isEmpty()) {
                        if (this.protoFile_.isEmpty()) {
                            this.protoFile_ = codeGeneratorRequest.protoFile_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureProtoFileIsMutable();
                            this.protoFile_.addAll(codeGeneratorRequest.protoFile_);
                        }
                        onChanged();
                    }
                } else if (!codeGeneratorRequest.protoFile_.isEmpty()) {
                    if (this.protoFileBuilder_.isEmpty()) {
                        this.protoFileBuilder_.dispose();
                        RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = null;
                        this.protoFileBuilder_ = null;
                        this.protoFile_ = codeGeneratorRequest.protoFile_;
                        this.bitField0_ &= -5;
                        if (CodeGeneratorRequest.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getProtoFileFieldBuilder();
                        }
                        this.protoFileBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.protoFileBuilder_.addAllMessages(codeGeneratorRequest.protoFile_);
                    }
                }
                if (codeGeneratorRequest.hasCompilerVersion()) {
                    mergeCompilerVersion(codeGeneratorRequest.getCompilerVersion());
                }
                mergeUnknownFields(codeGeneratorRequest.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeProtoFile(int i) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureProtoFileIsMutable();
                    this.protoFile_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder setCompilerVersion(Version.Builder builder) {
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.compilerVersion_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public final Builder setCompilerVersion(Version version) {
                SingleFieldBuilderV3<Version, Version.Builder, VersionOrBuilder> singleFieldBuilderV3 = this.compilerVersionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(version);
                    this.compilerVersion_ = version;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(version);
                }
                this.bitField0_ |= 8;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setFileToGenerate(int i, String str) {
                Objects.requireNonNull(str);
                ensureFileToGenerateIsMutable();
                this.fileToGenerate_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setParameter(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 2;
                this.parameter_ = str;
                onChanged();
                return this;
            }

            public final Builder setParameterBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.parameter_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setProtoFile(int i, DescriptorProtos.FileDescriptorProto.Builder builder) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureProtoFileIsMutable();
                    this.protoFile_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setProtoFile(int i, DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
                RepeatedFieldBuilderV3<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.Builder, DescriptorProtos.FileDescriptorProtoOrBuilder> repeatedFieldBuilderV3 = this.protoFileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(fileDescriptorProto);
                    ensureProtoFileIsMutable();
                    this.protoFile_.set(i, fileDescriptorProto);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, fileDescriptorProto);
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

        private CodeGeneratorRequest() {
            this.memoizedIsInitialized = (byte) (-1);
            this.fileToGenerate_ = LazyStringArrayList.EMPTY;
            this.parameter_ = "";
            this.protoFile_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                ByteString readBytes = codedInputStream.readBytes();
                                boolean z4 = z2;
                                if (!(z2 & true)) {
                                    boolean z5 = z2;
                                    boolean z6 = z2;
                                    this.fileToGenerate_ = new LazyStringArrayList();
                                    z4 = z2 | true;
                                }
                                this.fileToGenerate_.add(readBytes);
                                z2 = z4;
                            } else if (readTag == 18) {
                                ByteString readBytes2 = codedInputStream.readBytes();
                                boolean z7 = z2;
                                this.bitField0_ |= 1;
                                boolean z8 = z2;
                                this.parameter_ = readBytes2;
                            } else if (readTag == 26) {
                                Version.Builder builder = null;
                                if ((this.bitField0_ & 2) != 0) {
                                    boolean z9 = z2;
                                    builder = this.compilerVersion_.toBuilder();
                                }
                                boolean z10 = z2;
                                Version version = (Version) codedInputStream.readMessage(Version.PARSER, extensionRegistryLite);
                                boolean z11 = z2;
                                this.compilerVersion_ = version;
                                if (builder != null) {
                                    builder.mergeFrom(version);
                                    boolean z12 = z2;
                                    this.compilerVersion_ = builder.buildPartial();
                                }
                                boolean z13 = z2;
                                this.bitField0_ |= 2;
                            } else if (readTag == 122) {
                                boolean z14 = z2;
                                if (!(z2 & true)) {
                                    boolean z15 = z2;
                                    boolean z16 = z2;
                                    this.protoFile_ = new ArrayList();
                                    z14 = z2 | true;
                                }
                                this.protoFile_.add(codedInputStream.readMessage(DescriptorProtos.FileDescriptorProto.PARSER, extensionRegistryLite));
                                z2 = z14;
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
                        this.fileToGenerate_ = this.fileToGenerate_.getUnmodifiableView();
                    }
                    if (z3 & true) {
                        this.protoFile_ = Collections.unmodifiableList(this.protoFile_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.fileToGenerate_ = this.fileToGenerate_.getUnmodifiableView();
            }
            if (z2 & true) {
                this.protoFile_ = Collections.unmodifiableList(this.protoFile_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private CodeGeneratorRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static CodeGeneratorRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PluginProtos.f33008x36d642;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CodeGeneratorRequest codeGeneratorRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(codeGeneratorRequest);
        }

        public static CodeGeneratorRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CodeGeneratorRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CodeGeneratorRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CodeGeneratorRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CodeGeneratorRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static CodeGeneratorRequest parseFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CodeGeneratorRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CodeGeneratorRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CodeGeneratorRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CodeGeneratorRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<CodeGeneratorRequest> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorRequest)) {
                return super.equals(obj);
            }
            CodeGeneratorRequest codeGeneratorRequest = (CodeGeneratorRequest) obj;
            if (!getFileToGenerateList().equals(codeGeneratorRequest.getFileToGenerateList()) || hasParameter() != codeGeneratorRequest.hasParameter()) {
                return false;
            }
            if ((hasParameter() && !getParameter().equals(codeGeneratorRequest.getParameter())) || !getProtoFileList().equals(codeGeneratorRequest.getProtoFileList()) || hasCompilerVersion() != codeGeneratorRequest.hasCompilerVersion()) {
                return false;
            }
            return (!hasCompilerVersion() || getCompilerVersion().equals(codeGeneratorRequest.getCompilerVersion())) && this.unknownFields.equals(codeGeneratorRequest.unknownFields);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final Version getCompilerVersion() {
            Version version = this.compilerVersion_;
            Version version2 = version;
            if (version == null) {
                version2 = Version.getDefaultInstance();
            }
            return version2;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final VersionOrBuilder getCompilerVersionOrBuilder() {
            Version version = this.compilerVersion_;
            Version version2 = version;
            if (version == null) {
                version2 = Version.getDefaultInstance();
            }
            return version2;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final CodeGeneratorRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final String getFileToGenerate(int i) {
            return (String) this.fileToGenerate_.get(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final ByteString getFileToGenerateBytes(int i) {
            return this.fileToGenerate_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final int getFileToGenerateCount() {
            return this.fileToGenerate_.size();
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final ProtocolStringList getFileToGenerateList() {
            return this.fileToGenerate_;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final String getParameter() {
            Object obj = this.parameter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.parameter_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final ByteString getParameterBytes() {
            Object obj = this.parameter_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.parameter_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<CodeGeneratorRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final DescriptorProtos.FileDescriptorProto getProtoFile(int i) {
            return this.protoFile_.get(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final int getProtoFileCount() {
            return this.protoFile_.size();
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final List<DescriptorProtos.FileDescriptorProto> getProtoFileList() {
            return this.protoFile_;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i) {
            return this.protoFile_.get(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList() {
            return this.protoFile_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.fileToGenerate_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.fileToGenerate_.getRaw(i3));
            }
            int size = i2 + 0 + (getFileToGenerateList().size() * 1);
            int i4 = size;
            if ((this.bitField0_ & 1) != 0) {
                i4 = size + GeneratedMessageV3.computeStringSize(2, this.parameter_);
            }
            int i5 = 0;
            int i6 = i4;
            if ((this.bitField0_ & 2) != 0) {
                i6 = i4 + CodedOutputStream.computeMessageSize(3, getCompilerVersion());
                i5 = 0;
            }
            while (i5 < this.protoFile_.size()) {
                i6 += CodedOutputStream.computeMessageSize(15, this.protoFile_.get(i5));
                i5++;
            }
            int serializedSize = i6 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final boolean hasCompilerVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorRequestOrBuilder
        public final boolean hasParameter() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = getDescriptor().hashCode() + 779;
            int i = hashCode;
            if (getFileToGenerateCount() > 0) {
                i = (((hashCode * 37) + 1) * 53) + getFileToGenerateList().hashCode();
            }
            int i2 = i;
            if (hasParameter()) {
                i2 = (((i * 37) + 2) * 53) + getParameter().hashCode();
            }
            int i3 = i2;
            if (getProtoFileCount() > 0) {
                i3 = (((i2 * 37) + 15) * 53) + getProtoFileList().hashCode();
            }
            int i4 = i3;
            if (hasCompilerVersion()) {
                i4 = (((i3 * 37) + 3) * 53) + getCompilerVersion().hashCode();
            }
            int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f33009xfc149ac0.ensureFieldAccessorsInitialized(CodeGeneratorRequest.class, Builder.class);
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
            for (int i = 0; i < getProtoFileCount(); i++) {
                if (!getProtoFile(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
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
            return new CodeGeneratorRequest();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i = 0; i < this.fileToGenerate_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.fileToGenerate_.getRaw(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.parameter_);
            }
            int i2 = 0;
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(3, getCompilerVersion());
                i2 = 0;
            }
            while (i2 < this.protoFile_.size()) {
                codedOutputStream.writeMessage(15, this.protoFile_.get(i2));
                i2++;
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder.class */
    public interface CodeGeneratorRequestOrBuilder extends MessageOrBuilder {
        Version getCompilerVersion();

        VersionOrBuilder getCompilerVersionOrBuilder();

        String getFileToGenerate(int i);

        ByteString getFileToGenerateBytes(int i);

        int getFileToGenerateCount();

        List<String> getFileToGenerateList();

        String getParameter();

        ByteString getParameterBytes();

        DescriptorProtos.FileDescriptorProto getProtoFile(int i);

        int getProtoFileCount();

        List<DescriptorProtos.FileDescriptorProto> getProtoFileList();

        DescriptorProtos.FileDescriptorProtoOrBuilder getProtoFileOrBuilder(int i);

        List<? extends DescriptorProtos.FileDescriptorProtoOrBuilder> getProtoFileOrBuilderList();

        boolean hasCompilerVersion();

        boolean hasParameter();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse.class */
    public static final class CodeGeneratorResponse extends GeneratedMessageV3 implements CodeGeneratorResponseOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int FILE_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object error_;
        private List<File> file_;
        private byte memoizedIsInitialized;
        private static final CodeGeneratorResponse DEFAULT_INSTANCE = new CodeGeneratorResponse();
        @Deprecated
        public static final Parser<CodeGeneratorResponse> PARSER = new AbstractParser<CodeGeneratorResponse>() { // from class: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.1
            @Override // com.explorestack.protobuf.Parser
            public final CodeGeneratorResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CodeGeneratorResponse(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CodeGeneratorResponseOrBuilder {
            private int bitField0_;
            private Object error_;
            private RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> fileBuilder_;
            private List<File> file_;

            private Builder() {
                this.error_ = "";
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.error_ = "";
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureFileIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.file_ = new ArrayList(this.file_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PluginProtos.f33012x140ff76a;
            }

            private RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> getFileFieldBuilder() {
                if (this.fileBuilder_ == null) {
                    this.fileBuilder_ = new RepeatedFieldBuilderV3<>(this.file_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.file_ = null;
                }
                return this.fileBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (CodeGeneratorResponse.alwaysUseFieldBuilders) {
                    getFileFieldBuilder();
                }
            }

            public final Builder addAllFile(Iterable<? extends File> iterable) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFileIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.file_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addFile(int i, File.Builder builder) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFileIsMutable();
                    this.file_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addFile(int i, File file) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(file);
                    ensureFileIsMutable();
                    this.file_.add(i, file);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, file);
                }
                return this;
            }

            public final Builder addFile(File.Builder builder) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFileIsMutable();
                    this.file_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addFile(File file) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(file);
                    ensureFileIsMutable();
                    this.file_.add(file);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(file);
                }
                return this;
            }

            public final File.Builder addFileBuilder() {
                return getFileFieldBuilder().addBuilder(File.getDefaultInstance());
            }

            public final File.Builder addFileBuilder(int i) {
                return getFileFieldBuilder().addBuilder(i, File.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final CodeGeneratorResponse build() {
                CodeGeneratorResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final CodeGeneratorResponse buildPartial() {
                CodeGeneratorResponse codeGeneratorResponse = new CodeGeneratorResponse(this);
                int i = 1;
                if ((this.bitField0_ & 1) == 0) {
                    i = 0;
                }
                codeGeneratorResponse.error_ = this.error_;
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.file_ = Collections.unmodifiableList(this.file_);
                        this.bitField0_ &= -3;
                    }
                    codeGeneratorResponse.file_ = this.file_;
                } else {
                    codeGeneratorResponse.file_ = repeatedFieldBuilderV3.build();
                }
                codeGeneratorResponse.bitField0_ = i;
                onBuilt();
                return codeGeneratorResponse;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.error_ = "";
                this.bitField0_ &= -2;
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.file_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -2;
                this.error_ = CodeGeneratorResponse.getDefaultInstance().getError();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            public final Builder clearFile() {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.file_ = Collections.emptyList();
                    this.bitField0_ &= -3;
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final CodeGeneratorResponse getDefaultInstanceForType() {
                return CodeGeneratorResponse.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return PluginProtos.f33012x140ff76a;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final String getError() {
                Object obj = this.error_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.error_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final ByteString getErrorBytes() {
                Object obj = this.error_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.error_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final File getFile(int i) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.file_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final File.Builder getFileBuilder(int i) {
                return getFileFieldBuilder().getBuilder(i);
            }

            public final List<File.Builder> getFileBuilderList() {
                return getFileFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final int getFileCount() {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.file_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final List<File> getFileList() {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.file_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final FileOrBuilder getFileOrBuilder(int i) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                return repeatedFieldBuilderV3 == null ? this.file_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final List<? extends FileOrBuilder> getFileOrBuilderList() {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.file_);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f33013x23ee13e8.ensureFieldAccessorsInitialized(CodeGeneratorResponse.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser<com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse> r0 = com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.PARSER     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$Builder r0 = r0.mergeFrom(r1)
                L1a:
                    r0 = r4
                    return r0
                L1c:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L33
                L22:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r0     // Catch: java.lang.Throwable -> L1c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L30
                    throw r0     // Catch: java.lang.Throwable -> L30
                L30:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L33:
                    r0 = r7
                    if (r0 == 0) goto L3d
                    r0 = r4
                    r1 = r7
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$Builder r0 = r0.mergeFrom(r1)
                L3d:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CodeGeneratorResponse) {
                    return mergeFrom((CodeGeneratorResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CodeGeneratorResponse codeGeneratorResponse) {
                if (codeGeneratorResponse == CodeGeneratorResponse.getDefaultInstance()) {
                    return this;
                }
                if (codeGeneratorResponse.hasError()) {
                    this.bitField0_ |= 1;
                    this.error_ = codeGeneratorResponse.error_;
                    onChanged();
                }
                if (this.fileBuilder_ == null) {
                    if (!codeGeneratorResponse.file_.isEmpty()) {
                        if (this.file_.isEmpty()) {
                            this.file_ = codeGeneratorResponse.file_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureFileIsMutable();
                            this.file_.addAll(codeGeneratorResponse.file_);
                        }
                        onChanged();
                    }
                } else if (!codeGeneratorResponse.file_.isEmpty()) {
                    if (this.fileBuilder_.isEmpty()) {
                        this.fileBuilder_.dispose();
                        RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = null;
                        this.fileBuilder_ = null;
                        this.file_ = codeGeneratorResponse.file_;
                        this.bitField0_ &= -3;
                        if (CodeGeneratorResponse.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getFileFieldBuilder();
                        }
                        this.fileBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.fileBuilder_.addAllMessages(codeGeneratorResponse.file_);
                    }
                }
                mergeUnknownFields(codeGeneratorResponse.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeFile(int i) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFileIsMutable();
                    this.file_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder setError(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 1;
                this.error_ = str;
                onChanged();
                return this;
            }

            public final Builder setErrorBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 1;
                this.error_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setFile(int i, File.Builder builder) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureFileIsMutable();
                    this.file_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setFile(int i, File file) {
                RepeatedFieldBuilderV3<File, File.Builder, FileOrBuilder> repeatedFieldBuilderV3 = this.fileBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(file);
                    ensureFileIsMutable();
                    this.file_.set(i, file);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, file);
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File.class */
        public static final class File extends GeneratedMessageV3 implements FileOrBuilder {
            public static final int CONTENT_FIELD_NUMBER = 15;
            public static final int INSERTION_POINT_FIELD_NUMBER = 2;
            public static final int NAME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private volatile Object content_;
            private volatile Object insertionPoint_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private static final File DEFAULT_INSTANCE = new File();
            @Deprecated
            public static final Parser<File> PARSER = new AbstractParser<File>() { // from class: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.1
                @Override // com.explorestack.protobuf.Parser
                public final File parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new File(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FileOrBuilder {
                private int bitField0_;
                private Object content_;
                private Object insertionPoint_;
                private Object name_;

                private Builder() {
                    this.name_ = "";
                    this.insertionPoint_ = "";
                    this.content_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.name_ = "";
                    this.insertionPoint_ = "";
                    this.content_ = "";
                    maybeForceBuilderInitialization();
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return PluginProtos.f33010xcaba06d7;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = File.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final File build() {
                    File buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final File buildPartial() {
                    File file = new File(this);
                    int i = this.bitField0_;
                    int i2 = (i & 1) != 0 ? 1 : 0;
                    file.name_ = this.name_;
                    int i3 = i2;
                    if ((i & 2) != 0) {
                        i3 = i2 | 2;
                    }
                    file.insertionPoint_ = this.insertionPoint_;
                    int i4 = i3;
                    if ((i & 4) != 0) {
                        i4 = i3 | 4;
                    }
                    file.content_ = this.content_;
                    file.bitField0_ = i4;
                    onBuilt();
                    return file;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.name_ = "";
                    int i = this.bitField0_ & (-2);
                    this.bitField0_ = i;
                    this.insertionPoint_ = "";
                    int i2 = i & (-3);
                    this.bitField0_ = i2;
                    this.content_ = "";
                    this.bitField0_ = i2 & (-5);
                    return this;
                }

                public final Builder clearContent() {
                    this.bitField0_ &= -5;
                    this.content_ = File.getDefaultInstance().getContent();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                public final Builder clearInsertionPoint() {
                    this.bitField0_ &= -3;
                    this.insertionPoint_ = File.getDefaultInstance().getInsertionPoint();
                    onChanged();
                    return this;
                }

                public final Builder clearName() {
                    this.bitField0_ &= -2;
                    this.name_ = File.getDefaultInstance().getName();
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

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final String getContent() {
                    Object obj = this.content_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.content_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final ByteString getContentBytes() {
                    Object obj = this.content_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.content_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final File getDefaultInstanceForType() {
                    return File.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return PluginProtos.f33010xcaba06d7;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final String getInsertionPoint() {
                    Object obj = this.insertionPoint_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.insertionPoint_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final ByteString getInsertionPointBytes() {
                    Object obj = this.insertionPoint_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.insertionPoint_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.name_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final boolean hasContent() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final boolean hasInsertionPoint() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
                public final boolean hasName() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return PluginProtos.f33011xb43c6655.ensureFieldAccessorsInitialized(File.class, Builder.class);
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
                public final com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser<com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File> r0 = com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.PARSER     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L23
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L23
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L23
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L1a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File$Builder r0 = r0.mergeFrom(r1)
                    L1a:
                        r0 = r4
                        return r0
                    L1c:
                        r8 = move-exception
                        r0 = r7
                        r5 = r0
                        goto L37
                    L23:
                        r5 = move-exception
                        r0 = r5
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r0 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r0     // Catch: java.lang.Throwable -> L1c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L31
                        throw r0     // Catch: java.lang.Throwable -> L31
                    L31:
                        r5 = move-exception
                        r0 = r5
                        r8 = r0
                        r0 = r6
                        r5 = r0
                    L37:
                        r0 = r5
                        if (r0 == 0) goto L41
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File$Builder r0 = r0.mergeFrom(r1)
                    L41:
                        r0 = r8
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof File) {
                        return mergeFrom((File) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(File file) {
                    if (file == File.getDefaultInstance()) {
                        return this;
                    }
                    if (file.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = file.name_;
                        onChanged();
                    }
                    if (file.hasInsertionPoint()) {
                        this.bitField0_ |= 2;
                        this.insertionPoint_ = file.insertionPoint_;
                        onChanged();
                    }
                    if (file.hasContent()) {
                        this.bitField0_ |= 4;
                        this.content_ = file.content_;
                        onChanged();
                    }
                    mergeUnknownFields(file.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                public final Builder setContent(String str) {
                    Objects.requireNonNull(str);
                    this.bitField0_ |= 4;
                    this.content_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setContentBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.bitField0_ |= 4;
                    this.content_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                public final Builder setInsertionPoint(String str) {
                    Objects.requireNonNull(str);
                    this.bitField0_ |= 2;
                    this.insertionPoint_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setInsertionPointBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.bitField0_ |= 2;
                    this.insertionPoint_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setName(String str) {
                    Objects.requireNonNull(str);
                    this.bitField0_ |= 1;
                    this.name_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setNameBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    this.bitField0_ |= 1;
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

            private File() {
                this.memoizedIsInitialized = (byte) (-1);
                this.name_ = "";
                this.insertionPoint_ = "";
                this.content_ = "";
            }

            private File(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    ByteString readBytes = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    this.name_ = readBytes;
                                } else if (readTag == 18) {
                                    ByteString readBytes2 = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    this.insertionPoint_ = readBytes2;
                                } else if (readTag == 122) {
                                    ByteString readBytes3 = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    this.content_ = readBytes3;
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
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private File(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static File getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PluginProtos.f33010xcaba06d7;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(File file) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(file);
            }

            public static File parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (File) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static File parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (File) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static File parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static File parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static File parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static File parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static File parseFrom(InputStream inputStream) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static File parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static File parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static File parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static File parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static File parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<File> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof File)) {
                    return super.equals(obj);
                }
                File file = (File) obj;
                if (hasName() != file.hasName()) {
                    return false;
                }
                if ((hasName() && !getName().equals(file.getName())) || hasInsertionPoint() != file.hasInsertionPoint()) {
                    return false;
                }
                if ((hasInsertionPoint() && !getInsertionPoint().equals(file.getInsertionPoint())) || hasContent() != file.hasContent()) {
                    return false;
                }
                return (!hasContent() || getContent().equals(file.getContent())) && this.unknownFields.equals(file.unknownFields);
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.content_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final ByteString getContentBytes() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.content_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final File getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final String getInsertionPoint() {
                Object obj = this.insertionPoint_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.insertionPoint_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final ByteString getInsertionPointBytes() {
                Object obj = this.insertionPoint_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.insertionPoint_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
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
            public final Parser<File> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.bitField0_ & 1) != 0) {
                    i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
                }
                int i3 = i2;
                if ((this.bitField0_ & 2) != 0) {
                    i3 = i2 + GeneratedMessageV3.computeStringSize(2, this.insertionPoint_);
                }
                int i4 = i3;
                if ((this.bitField0_ & 4) != 0) {
                    i4 = i3 + GeneratedMessageV3.computeStringSize(15, this.content_);
                }
                int serializedSize = i4 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final boolean hasContent() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final boolean hasInsertionPoint() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.FileOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = getDescriptor().hashCode() + 779;
                int i = hashCode;
                if (hasName()) {
                    i = (((hashCode * 37) + 1) * 53) + getName().hashCode();
                }
                int i2 = i;
                if (hasInsertionPoint()) {
                    i2 = (((i * 37) + 2) * 53) + getInsertionPoint().hashCode();
                }
                int i3 = i2;
                if (hasContent()) {
                    i3 = (((i2 * 37) + 15) * 53) + getContent().hashCode();
                }
                int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f33011xb43c6655.ensureFieldAccessorsInitialized(File.class, Builder.class);
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
                return new File();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.insertionPoint_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 15, this.content_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder.class */
        public interface FileOrBuilder extends MessageOrBuilder {
            String getContent();

            ByteString getContentBytes();

            String getInsertionPoint();

            ByteString getInsertionPointBytes();

            String getName();

            ByteString getNameBytes();

            boolean hasContent();

            boolean hasInsertionPoint();

            boolean hasName();
        }

        private CodeGeneratorResponse() {
            this.memoizedIsInitialized = (byte) (-1);
            this.error_ = "";
            this.file_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                ByteString readBytes = codedInputStream.readBytes();
                                boolean z4 = z2;
                                this.bitField0_ |= 1;
                                boolean z5 = z2;
                                this.error_ = readBytes;
                            } else if (readTag == 122) {
                                boolean z6 = z2;
                                if (!(z2 & true)) {
                                    boolean z7 = z2;
                                    boolean z8 = z2;
                                    this.file_ = new ArrayList();
                                    z6 = z2 | true;
                                }
                                this.file_.add(codedInputStream.readMessage(File.PARSER, extensionRegistryLite));
                                z2 = z6;
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
                        this.file_ = Collections.unmodifiableList(this.file_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.file_ = Collections.unmodifiableList(this.file_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        private CodeGeneratorResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static CodeGeneratorResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PluginProtos.f33012x140ff76a;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CodeGeneratorResponse codeGeneratorResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(codeGeneratorResponse);
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CodeGeneratorResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static CodeGeneratorResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<CodeGeneratorResponse> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorResponse)) {
                return super.equals(obj);
            }
            CodeGeneratorResponse codeGeneratorResponse = (CodeGeneratorResponse) obj;
            if (hasError() != codeGeneratorResponse.hasError()) {
                return false;
            }
            return (!hasError() || getError().equals(codeGeneratorResponse.getError())) && getFileList().equals(codeGeneratorResponse.getFileList()) && this.unknownFields.equals(codeGeneratorResponse.unknownFields);
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final CodeGeneratorResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.error_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final ByteString getErrorBytes() {
            Object obj = this.error_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.error_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final File getFile(int i) {
            return this.file_.get(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final int getFileCount() {
            return this.file_.size();
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final List<File> getFileList() {
            return this.file_;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final FileOrBuilder getFileOrBuilder(int i) {
            return this.file_.get(i);
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final List<? extends FileOrBuilder> getFileOrBuilderList() {
            return this.file_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<CodeGeneratorResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessageV3.computeStringSize(1, this.error_) + 0 : 0;
            for (int i2 = 0; i2 < this.file_.size(); i2++) {
                computeStringSize += CodedOutputStream.computeMessageSize(15, this.file_.get(i2));
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponseOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = getDescriptor().hashCode() + 779;
            int i = hashCode;
            if (hasError()) {
                i = (((hashCode * 37) + 1) * 53) + getError().hashCode();
            }
            int i2 = i;
            if (getFileCount() > 0) {
                i2 = (((i * 37) + 15) * 53) + getFileList().hashCode();
            }
            int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f33013x23ee13e8.ensureFieldAccessorsInitialized(CodeGeneratorResponse.class, Builder.class);
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
            return new CodeGeneratorResponse();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.error_);
            }
            for (int i = 0; i < this.file_.size(); i++) {
                codedOutputStream.writeMessage(15, this.file_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponseOrBuilder.class */
    public interface CodeGeneratorResponseOrBuilder extends MessageOrBuilder {
        String getError();

        ByteString getErrorBytes();

        CodeGeneratorResponse.File getFile(int i);

        int getFileCount();

        List<CodeGeneratorResponse.File> getFileList();

        CodeGeneratorResponse.FileOrBuilder getFileOrBuilder(int i);

        List<? extends CodeGeneratorResponse.FileOrBuilder> getFileOrBuilderList();

        boolean hasError();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$Version.class */
    public static final class Version extends GeneratedMessageV3 implements VersionOrBuilder {
        public static final int MAJOR_FIELD_NUMBER = 1;
        public static final int MINOR_FIELD_NUMBER = 2;
        public static final int PATCH_FIELD_NUMBER = 3;
        public static final int SUFFIX_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int major_;
        private byte memoizedIsInitialized;
        private int minor_;
        private int patch_;
        private volatile Object suffix_;
        private static final Version DEFAULT_INSTANCE = new Version();
        @Deprecated
        public static final Parser<Version> PARSER = new AbstractParser<Version>() { // from class: com.explorestack.protobuf.compiler.PluginProtos.Version.1
            @Override // com.explorestack.protobuf.Parser
            public final Version parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Version(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$Version$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VersionOrBuilder {
            private int bitField0_;
            private int major_;
            private int minor_;
            private int patch_;
            private Object suffix_;

            private Builder() {
                this.suffix_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.suffix_ = "";
                maybeForceBuilderInitialization();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PluginProtos.internal_static_google_protobuf_compiler_Version_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Version.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Version build() {
                Version buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Version buildPartial() {
                int i;
                Version version = new Version(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    version.major_ = this.major_;
                    i = 1;
                } else {
                    i = 0;
                }
                int i3 = i;
                if ((i2 & 2) != 0) {
                    version.minor_ = this.minor_;
                    i3 = i | 2;
                }
                int i4 = i3;
                if ((i2 & 4) != 0) {
                    version.patch_ = this.patch_;
                    i4 = i3 | 4;
                }
                int i5 = i4;
                if ((i2 & 8) != 0) {
                    i5 = i4 | 8;
                }
                version.suffix_ = this.suffix_;
                version.bitField0_ = i5;
                onBuilt();
                return version;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.major_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.minor_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.patch_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.suffix_ = "";
                this.bitField0_ = i3 & (-9);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            public final Builder clearMajor() {
                this.bitField0_ &= -2;
                this.major_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMinor() {
                this.bitField0_ &= -3;
                this.minor_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearPatch() {
                this.bitField0_ &= -5;
                this.patch_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearSuffix() {
                this.bitField0_ &= -9;
                this.suffix_ = Version.getDefaultInstance().getSuffix();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Version getDefaultInstanceForType() {
                return Version.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return PluginProtos.internal_static_google_protobuf_compiler_Version_descriptor;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final int getMajor() {
                return this.major_;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final int getMinor() {
                return this.minor_;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final int getPatch() {
                return this.patch_;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final String getSuffix() {
                Object obj = this.suffix_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.suffix_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final ByteString getSuffixBytes() {
                Object obj = this.suffix_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.suffix_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final boolean hasMajor() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final boolean hasMinor() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final boolean hasPatch() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
            public final boolean hasSuffix() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return PluginProtos.f33014xc9007e77.ensureFieldAccessorsInitialized(Version.class, Builder.class);
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
            public final com.explorestack.protobuf.compiler.PluginProtos.Version.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser<com.explorestack.protobuf.compiler.PluginProtos$Version> r0 = com.explorestack.protobuf.compiler.PluginProtos.Version.PARSER     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    com.explorestack.protobuf.compiler.PluginProtos$Version r0 = (com.explorestack.protobuf.compiler.PluginProtos.Version) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L22
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L1a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.compiler.PluginProtos$Version$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.compiler.PluginProtos$Version r0 = (com.explorestack.protobuf.compiler.PluginProtos.Version) r0     // Catch: java.lang.Throwable -> L1c
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
                    com.explorestack.protobuf.compiler.PluginProtos$Version$Builder r0 = r0.mergeFrom(r1)
                L3b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.Version.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.compiler.PluginProtos$Version$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Version) {
                    return mergeFrom((Version) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Version version) {
                if (version == Version.getDefaultInstance()) {
                    return this;
                }
                if (version.hasMajor()) {
                    setMajor(version.getMajor());
                }
                if (version.hasMinor()) {
                    setMinor(version.getMinor());
                }
                if (version.hasPatch()) {
                    setPatch(version.getPatch());
                }
                if (version.hasSuffix()) {
                    this.bitField0_ |= 8;
                    this.suffix_ = version.suffix_;
                    onChanged();
                }
                mergeUnknownFields(version.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setMajor(int i) {
                this.bitField0_ |= 1;
                this.major_ = i;
                onChanged();
                return this;
            }

            public final Builder setMinor(int i) {
                this.bitField0_ |= 2;
                this.minor_ = i;
                onChanged();
                return this;
            }

            public final Builder setPatch(int i) {
                this.bitField0_ |= 4;
                this.patch_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSuffix(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 8;
                this.suffix_ = str;
                onChanged();
                return this;
            }

            public final Builder setSuffixBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 8;
                this.suffix_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        private Version() {
            this.memoizedIsInitialized = (byte) (-1);
            this.suffix_ = "";
        }

        private Version(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 1;
                                this.major_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.minor_ = codedInputStream.readInt32();
                            } else if (readTag == 24) {
                                this.bitField0_ |= 4;
                                this.patch_ = codedInputStream.readInt32();
                            } else if (readTag == 34) {
                                ByteString readBytes = codedInputStream.readBytes();
                                this.bitField0_ = 8 | this.bitField0_;
                                this.suffix_ = readBytes;
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Version(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Version getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PluginProtos.internal_static_google_protobuf_compiler_Version_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Version version) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(version);
        }

        public static Version parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Version parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Version parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Version parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Version parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Version parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Version parseFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Version parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Version parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Version parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Version parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Version parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Version> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return super.equals(obj);
            }
            Version version = (Version) obj;
            if (hasMajor() != version.hasMajor()) {
                return false;
            }
            if ((hasMajor() && getMajor() != version.getMajor()) || hasMinor() != version.hasMinor()) {
                return false;
            }
            if ((hasMinor() && getMinor() != version.getMinor()) || hasPatch() != version.hasPatch()) {
                return false;
            }
            if ((hasPatch() && getPatch() != version.getPatch()) || hasSuffix() != version.hasSuffix()) {
                return false;
            }
            return (!hasSuffix() || getSuffix().equals(version.getSuffix())) && this.unknownFields.equals(version.unknownFields);
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Version getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final int getMajor() {
            return this.major_;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final int getMinor() {
            return this.minor_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Version> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final int getPatch() {
            return this.patch_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) != 0) {
                i2 = 0 + CodedOutputStream.computeInt32Size(1, this.major_);
            }
            int i3 = i2;
            if ((this.bitField0_ & 2) != 0) {
                i3 = i2 + CodedOutputStream.computeInt32Size(2, this.minor_);
            }
            int i4 = i3;
            if ((this.bitField0_ & 4) != 0) {
                i4 = i3 + CodedOutputStream.computeInt32Size(3, this.patch_);
            }
            int i5 = i4;
            if ((this.bitField0_ & 8) != 0) {
                i5 = i4 + GeneratedMessageV3.computeStringSize(4, this.suffix_);
            }
            int serializedSize = i5 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final String getSuffix() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.suffix_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final ByteString getSuffixBytes() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.suffix_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final boolean hasMajor() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final boolean hasMinor() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final boolean hasPatch() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.explorestack.protobuf.compiler.PluginProtos.VersionOrBuilder
        public final boolean hasSuffix() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = getDescriptor().hashCode() + 779;
            int i = hashCode;
            if (hasMajor()) {
                i = (((hashCode * 37) + 1) * 53) + getMajor();
            }
            int i2 = i;
            if (hasMinor()) {
                i2 = (((i * 37) + 2) * 53) + getMinor();
            }
            int i3 = i2;
            if (hasPatch()) {
                i3 = (((i2 * 37) + 3) * 53) + getPatch();
            }
            int i4 = i3;
            if (hasSuffix()) {
                i4 = (((i3 * 37) + 4) * 53) + getSuffix().hashCode();
            }
            int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return PluginProtos.f33014xc9007e77.ensureFieldAccessorsInitialized(Version.class, Builder.class);
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
            return new Version();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.major_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.minor_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.patch_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.suffix_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder.class */
    public interface VersionOrBuilder extends MessageOrBuilder {
        int getMajor();

        int getMinor();

        int getPatch();

        String getSuffix();

        ByteString getSuffixBytes();

        boolean hasMajor();

        boolean hasMinor();

        boolean hasPatch();

        boolean hasSuffix();
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_google_protobuf_compiler_Version_descriptor = descriptor2;
        f33014xc9007e77 = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Major", "Minor", "Patch", "Suffix"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        f33008x36d642 = descriptor3;
        f33009xfc149ac0 = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"FileToGenerate", "Parameter", "ProtoFile", "CompilerVersion"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        f33012x140ff76a = descriptor4;
        f33013x23ee13e8 = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Error", "File"});
        Descriptors.Descriptor descriptor5 = descriptor4.getNestedTypes().get(0);
        f33010xcaba06d7 = descriptor5;
        f33011xb43c6655 = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Name", "InsertionPoint", "Content"});
        DescriptorProtos.getDescriptor();
    }

    private PluginProtos() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}

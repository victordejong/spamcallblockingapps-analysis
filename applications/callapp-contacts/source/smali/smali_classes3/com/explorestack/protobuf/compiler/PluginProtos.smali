.class public final Lcom/explorestack/protobuf/compiler/PluginProtos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponseOrBuilder;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$Version;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_google_protobuf_compiler_Version_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_Version_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"\u00ba\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"\u00aa\u0001\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a>\n\u0004File\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\tBg\n\u001ccom.google.protobuf.compilerB\u000cPluginProtosZ9github.com/golang/protobuf/protoc-gen-go/plugin;plugin_go"

    .line 5599
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 5620
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5618
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 5623
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_Version_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 5624
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Major"

    const-string v5, "Minor"

    const-string v6, "Patch"

    const-string v7, "Suffix"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_Version_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5629
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 5630
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "FileToGenerate"

    const-string v3, "Parameter"

    const-string v5, "ProtoFile"

    const-string v6, "CompilerVersion"

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5635
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 5636
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Error"

    const-string v3, "File"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5641
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 5642
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Name"

    const-string v3, "InsertionPoint"

    const-string v4, "Content"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5646
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_Version_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_Version_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2800()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2900()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 5594
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method

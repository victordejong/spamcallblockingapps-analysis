.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeGeneratorRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    }
.end annotation


# static fields
.field public static final COMPILER_VERSION_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

.field public static final FILE_TO_GENERATE_FIELD_NUMBER:I = 0x1

.field public static final PARAMETER_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTO_FILE_FIELD_NUMBER:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

.field private fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private volatile parameter_:Ljava/lang/Object;

.field private protoFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2890
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-direct {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .line 2898
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1145
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1508
    iput-byte v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    .line 1146
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    const-string v0, ""

    .line 1147
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 1148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1167
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>()V

    .line 1169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 1177
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x7a

    if-eq v4, v5, :cond_1

    .line 1220
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_2

    .line 1212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 1215
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1216
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1215
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 1199
    iget v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 1200
    iget-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v4

    .line 1202
    :cond_4
    sget-object v5, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    iput-object v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-eqz v4, :cond_5

    .line 1204
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 1205
    invoke-virtual {v4}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 1207
    :cond_5
    iget v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    goto :goto_0

    .line 1192
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 1193
    iget v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    .line 1194
    iput-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    goto :goto_0

    .line 1183
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_8

    .line 1185
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 1188
    :cond_8
    iget-object v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1231
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1232
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1229
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 1235
    iget-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_b

    .line 1238
    iget-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 1240
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->makeExtensionsImmutable()V

    .line 1242
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 1235
    iget-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_e

    .line 1238
    iget-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 1240
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1136
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1143
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1508
    iput-byte p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 1136
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 1136
    sget-boolean v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I
    .locals 0

    .line 1136
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 1136
    sget-boolean v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    .line 2894
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1246
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$1300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 1702
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 1705
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1676
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1683
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1643
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1649
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1688
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1689
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1696
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1664
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1670
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1671
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1632
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1638
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1653
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1659
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .line 2909
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1578
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-nez v1, :cond_1

    .line 1579
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1581
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .line 1583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 1584
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1585
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 1586
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 1588
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1590
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v1

    .line 1591
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1592
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 1593
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    .line 1595
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1597
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getCompilerVersionOrBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    .line 2919
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public final getFileToGenerate(I)Ljava/lang/String;
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getFileToGenerateBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getFileToGenerateCount()I
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getParameter()Ljava/lang/String;
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 1332
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1333
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1335
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1337
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getParameterBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 1354
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1355
    check-cast v0, Ljava/lang/String;

    .line 1356
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1358
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    return-object v0

    .line 1361
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .line 2914
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getProtoFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1
.end method

.method public final getProtoFileCount()I
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getProtoFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public final getProtoFileOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getProtoFileOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 1545
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1551
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1552
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 1555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 1557
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 1558
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 1560
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    .line 1564
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/16 v1, 0xf

    .line 1565
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 1566
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1568
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 1569
    iput v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasCompilerVersion()Z
    .locals 1

    .line 1485
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasParameter()Z
    .locals 2

    .line 1321
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1603
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1604
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    return v0

    .line 1607
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 1608
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1612
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1616
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 1618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1620
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1622
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 1624
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1625
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1252
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$1400()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 1253
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1511
    iget-byte v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1515
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1516
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1517
    iput-byte v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1521
    :cond_3
    iput-byte v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1136
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 1700
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .line 1716
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1155
    new-instance p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-direct {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .line 1709
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V

    .line 1710
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1528
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 1529
    iget-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1531
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/2addr v1, v3

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1534
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 1535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1537
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0xf

    .line 1538
    iget-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1540
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

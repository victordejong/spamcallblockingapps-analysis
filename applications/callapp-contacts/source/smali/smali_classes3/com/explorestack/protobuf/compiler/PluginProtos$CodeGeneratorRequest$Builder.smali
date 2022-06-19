.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$Version;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

.field private fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

.field private parameter_:Ljava/lang/Object;

.field private protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    .line 1744
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1961
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    const-string v0, ""

    .line 2108
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1745
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1750
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1961
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    const-string p1, ""

    .line 2108
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1751
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 1726
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 1726
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>()V

    return-void
.end method

.method private ensureFileToGenerateIsMutable()V
    .locals 2

    .line 1963
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1964
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1965
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureProtoFileIsMutable()V
    .locals 2

    .line 2211
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 2213
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCompilerVersionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$Version;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2861
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2862
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    .line 2865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2867
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2869
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1732
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$1300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2706
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2707
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2711
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2713
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 2715
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1755
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1757
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getCompilerVersionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllFileToGenerate(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;"
        }
    .end annotation

    .line 2067
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    .line 2068
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2070
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllProtoFile(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;"
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2498
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2499
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2503
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFileToGenerate(Ljava/lang/String;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2049
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    .line 2052
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final addFileToGenerateBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    .line 2103
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 2104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final addProtoFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2468
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2469
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2470
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2473
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addProtoFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2407
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2409
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2412
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2415
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addProtoFile(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2440
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2441
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2444
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addProtoFile(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2380
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addProtoFileBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 2655
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2656
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    .line 2655
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object v0
.end method

.method public final addProtoFileBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 2678
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2679
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    .line 2678
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 1868
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 2

    .line 1795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    .line 1796
    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1797
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 4

    .line 1804
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V

    .line 1805
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1808
    iget-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1809
    iget v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 1811
    :cond_0
    iget-object v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1902(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1815
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2002(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_3

    .line 1817
    iget v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 1818
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1819
    iget v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 1821
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2102(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1823
    :cond_3
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2102(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 1826
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 1827
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2202(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    goto :goto_2

    .line 1829
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2202(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 1833
    :cond_5
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2302(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I

    .line 1834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .line 1762
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1763
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1764
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const-string v1, ""

    .line 1765
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    .line 1766
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 1767
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1769
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_0

    .line 1771
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1773
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1774
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    goto :goto_1

    .line 1776
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1778
    :goto_1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2815
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2816
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2819
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2821
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 1851
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final clearFileToGenerate()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2083
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2084
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2085
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 1856
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final clearParameter()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2185
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2186
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearProtoFile()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2526
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 2528
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2531
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 1840
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 1

    .line 2739
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2740
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2742
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    return-object v0
.end method

.method public final getCompilerVersionBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 2832
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    .line 2834
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getCompilerVersionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object v0
.end method

.method public final getCompilerVersionOrBuilder()Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;
    .locals 1

    .line 2844
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2845
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;

    return-object v0

    .line 2847
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_1

    .line 2848
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    .line 1790
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1785
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$1300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getFileToGenerate(I)Ljava/lang/String;
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getFileToGenerateBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 2016
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getFileToGenerateCount()I
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    .line 1726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getFileToGenerateList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getParameter()Ljava/lang/String;
    .locals 2

    .line 2127
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2128
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2129
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2137
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getParameterBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2149
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2150
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2151
    check-cast v0, Ljava/lang/String;

    .line 2152
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2154
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    return-object v0

    .line 2157
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getProtoFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1

    .line 2292
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1
.end method

.method public final getProtoFileBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2583
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final getProtoFileBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 2701
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProtoFileCount()I
    .locals 1

    .line 2264
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2267
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

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

    .line 2239
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2242
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProtoFileOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    .line 2605
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2606
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1

    .line 2607
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

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

    .line 2630
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2631
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2633
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasCompilerVersion()Z
    .locals 1

    .line 2729
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasParameter()Z
    .locals 1

    .line 2117
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1738
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$1400()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 1739
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1933
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1934
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final mergeCompilerVersion(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .line 2791
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2792
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-eqz v0, :cond_0

    .line 2794
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2796
    invoke-static {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->newBuilder(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    goto :goto_0

    .line 2798
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2800
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_1

    .line 2802
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2804
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1948
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1954
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1950
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1951
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1954
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 1956
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 1872
    instance-of v0, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-eqz v0, :cond_0

    .line 1873
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1

    .line 1875
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .line 1881
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1882
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1885
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_0

    .line 1887
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    .line 1888
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 1890
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    .line 1892
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1893
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 1894
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2000(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 1895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    .line 1897
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 1898
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1899
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1900
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1901
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_1

    .line 1903
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 1904
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1906
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_2

    .line 1909
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1910
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1911
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1912
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1913
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    .line 1914
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 1916
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1917
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 1919
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1923
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1924
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeCompilerVersion(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 1926
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2500(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 1927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 2880
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final removeProtoFile(I)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2554
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2555
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2556
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2559
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCompilerVersion(Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2774
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2775
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2778
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2780
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setCompilerVersion(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2753
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2755
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->compilerVersion_:Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    .line 2758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2760
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2762
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 1846
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final setFileToGenerate(ILjava/lang/String;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2030
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    .line 2033
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParameter(Ljava/lang/String;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2173
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParameterBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    .line 2203
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    .line 2204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProtoFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2347
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2348
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2349
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2350
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2352
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setProtoFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .line 2315
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2317
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    .line 2320
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 1862
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    .line 2874
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

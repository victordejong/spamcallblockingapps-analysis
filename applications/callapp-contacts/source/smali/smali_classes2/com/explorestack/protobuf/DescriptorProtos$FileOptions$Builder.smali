.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccEnableArenas_:Z

.field private ccGenericServices_:Z

.field private csharpNamespace_:Ljava/lang/Object;

.field private deprecated_:Z

.field private goPackage_:Ljava/lang/Object;

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenericServices_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private objcClassPrefix_:Ljava/lang/Object;

.field private optimizeFor_:I

.field private phpClassPrefix_:Ljava/lang/Object;

.field private phpGenericServices_:Z

.field private phpMetadataNamespace_:Ljava/lang/Object;

.field private phpNamespace_:Ljava/lang/Object;

.field private pyGenericServices_:Z

.field private rubyPackage_:Ljava/lang/Object;

.field private swiftPrefix_:Ljava/lang/Object;

.field private uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22954
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    const-string v0, ""

    .line 23356
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23474
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 23782
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 23819
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 24231
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24337
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24437
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24555
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24661
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24773
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24885
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 22955
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 22935
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 22960
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 23356
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23474
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 23782
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 23819
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 24231
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24337
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24437
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24555
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24661
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24773
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24885
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 22961
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 22935
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 3

    .line 25000
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 25001
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 25002
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22942
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$14900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25315
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25316
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 25320
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 25321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 25322
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 25324
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 22964
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 22966
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 25186
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25187
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25188
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25192
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "Ljava/util/List<",
            "TType;>;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 23191
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 23170
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25167
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25168
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25169
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25172
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25126
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25128
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25130
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25131
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25134
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25148
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25149
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25150
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25153
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25104
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25108
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25109
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25112
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOptionBuilder()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 25284
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25285
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 25284
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final addUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 25297
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25298
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 25297
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 2

    .line 23034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    .line 23035
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 23036
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 5

    .line 23043
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 23044
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 23049
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 23053
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 23055
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15602(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 23059
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15702(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    .line 23063
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15802(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    .line 23069
    :cond_5
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15902(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    .line 23073
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16002(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    .line 23075
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16102(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    .line 23079
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16202(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    .line 23083
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16302(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    .line 23087
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    .line 23091
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x800

    :cond_b
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    .line 23095
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16602(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x2000

    .line 23101
    :cond_d
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16702(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    or-int/lit16 v2, v2, 0x4000

    .line 23105
    :cond_e
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16802(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x8000

    and-int v4, v1, v3

    if-eqz v4, :cond_f

    or-int/2addr v2, v3

    .line 23109
    :cond_f
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16902(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x10000

    and-int v4, v1, v3

    if-eqz v4, :cond_10

    or-int/2addr v2, v3

    .line 23113
    :cond_10
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17002(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x20000

    and-int v4, v1, v3

    if-eqz v4, :cond_11

    or-int/2addr v2, v3

    .line 23117
    :cond_11
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17102(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x40000

    and-int v4, v1, v3

    if-eqz v4, :cond_12

    or-int/2addr v2, v3

    .line 23121
    :cond_12
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17202(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    or-int/2addr v2, v3

    .line 23125
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17302(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23126
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_15

    .line 23127
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    .line 23128
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 23129
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v3, -0x100001

    and-int/2addr v1, v3

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23131
    :cond_14
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 23133
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 23135
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I

    .line 23136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 4

    .line 22971
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const-string v0, ""

    .line 22972
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 22973
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22974
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 22975
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v2, 0x0

    .line 22976
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    and-int/lit8 v1, v1, -0x5

    .line 22977
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22978
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    and-int/lit8 v1, v1, -0x9

    .line 22979
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22980
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    and-int/lit8 v1, v1, -0x11

    .line 22981
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v3, 0x1

    .line 22982
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    and-int/lit8 v1, v1, -0x21

    .line 22983
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22984
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    .line 22985
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22986
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    and-int/lit16 v1, v1, -0x81

    .line 22987
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22988
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    and-int/lit16 v1, v1, -0x101

    .line 22989
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22990
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    and-int/lit16 v1, v1, -0x201

    .line 22991
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22992
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    and-int/lit16 v1, v1, -0x401

    .line 22993
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22994
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    and-int/lit16 v1, v1, -0x801

    .line 22995
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22996
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    and-int/lit16 v1, v1, -0x1001

    .line 22997
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22998
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x2001

    .line 22999
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23000
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x4001

    .line 23001
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23002
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    const v2, -0x8001

    and-int/2addr v1, v2

    .line 23003
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23004
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    const v2, -0x10001

    and-int/2addr v1, v2

    .line 23005
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23006
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    const v2, -0x20001

    and-int/2addr v1, v2

    .line 23007
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23008
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    const v2, -0x40001

    and-int/2addr v1, v2

    .line 23009
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23010
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    const v0, -0x80001

    and-int/2addr v0, v1

    .line 23011
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23012
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 23013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 23014
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 23016
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearCcEnableArenas()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24225
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24226
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    .line 24227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCcGenericServices()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24017
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24018
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 24019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCsharpNamespace()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24414
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24415
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeprecated()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24173
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24174
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 24175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "*>;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 23197
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 23153
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearGoPackage()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23916
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23917
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaGenerateEqualsAndHash()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23708
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 23709
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 23710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaGenericServices()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24049
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24050
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 24051
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaMultipleFiles()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23660
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 23661
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 23662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaOuterClassname()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23571
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23572
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaPackage()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23448
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23449
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJavaStringCheckUtf8()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23776
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 23777
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 23778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearObjcClassPrefix()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24313
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24314
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 23158
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptimizeFor()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23813
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 23814
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 23815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhpClassPrefix()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24637
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24638
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhpGenericServices()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24113
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24114
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    .line 24115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhpMetadataNamespace()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24860
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24861
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24862
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhpNamespace()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24748
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24749
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPyGenericServices()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24081
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 24082
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 24083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRubyPackage()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24972
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24973
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSwiftPrefix()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24529
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24530
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUninterpretedOption()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 25205
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 25207
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 25208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25210
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23142
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCcEnableArenas()Z
    .locals 1

    .line 24200
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    return v0
.end method

.method public final getCcGenericServices()Z
    .locals 1

    .line 23978
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    return v0
.end method

.method public final getCsharpNamespace()Ljava/lang/String;
    .locals 2

    .line 24356
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24357
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24358
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24360
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24361
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24362
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24366
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCsharpNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24378
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24379
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24380
    check-cast v0, Ljava/lang/String;

    .line 24381
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24383
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 24386
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 23029
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 24144
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23024
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$14900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getGoPackage()Ljava/lang/String;
    .locals 2

    .line 23846
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23847
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23848
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23850
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23851
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23852
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23856
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGoPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23872
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23874
    check-cast v0, Ljava/lang/String;

    .line 23875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23877
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    return-object v0

    .line 23880
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23685
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public final getJavaGenericServices()Z
    .locals 1

    .line 24034
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    return v0
.end method

.method public final getJavaMultipleFiles()Z
    .locals 1

    .line 23627
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    return v0
.end method

.method public final getJavaOuterClassname()Ljava/lang/String;
    .locals 2

    .line 23501
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23502
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23503
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23505
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23506
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23507
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23511
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getJavaOuterClassnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23527
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23528
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23529
    check-cast v0, Ljava/lang/String;

    .line 23530
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23532
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0

    .line 23535
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaPackage()Ljava/lang/String;
    .locals 2

    .line 23381
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23382
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23383
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23385
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23386
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23387
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23391
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getJavaPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23406
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23408
    check-cast v0, Ljava/lang/String;

    .line 23409
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23411
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    return-object v0

    .line 23414
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaStringCheckUtf8()Z
    .locals 1

    .line 23743
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public final getObjcClassPrefix()Ljava/lang/String;
    .locals 2

    .line 24252
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24253
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24254
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24256
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24257
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24258
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24262
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getObjcClassPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24275
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24276
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24277
    check-cast v0, Ljava/lang/String;

    .line 24278
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24280
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 24283
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptimizeFor()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 23794
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23795
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    :cond_0
    return-object v0
.end method

.method public final getPhpClassPrefix()Ljava/lang/String;
    .locals 2

    .line 24576
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24577
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24578
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24580
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24581
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24582
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24586
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPhpClassPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24599
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24601
    check-cast v0, Ljava/lang/String;

    .line 24602
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24604
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 24607
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPhpGenericServices()Z
    .locals 1

    .line 24098
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    return v0
.end method

.method public final getPhpMetadataNamespace()Ljava/lang/String;
    .locals 2

    .line 24796
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24797
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24798
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24800
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24801
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24802
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24806
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPhpMetadataNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24820
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24821
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24822
    check-cast v0, Ljava/lang/String;

    .line 24823
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24825
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    return-object v0

    .line 24828
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPhpNamespace()Ljava/lang/String;
    .locals 2

    .line 24684
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24685
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24686
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24688
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24689
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24690
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24694
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPhpNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24708
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24709
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24710
    check-cast v0, Ljava/lang/String;

    .line 24711
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24713
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 24716
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPyGenericServices()Z
    .locals 1

    .line 24066
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    return v0
.end method

.method public final getRubyPackage()Ljava/lang/String;
    .locals 2

    .line 24908
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24909
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24910
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24912
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24913
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24914
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24918
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRubyPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24932
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24934
    check-cast v0, Ljava/lang/String;

    .line 24935
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24937
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    return-object v0

    .line 24940
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSwiftPrefix()Ljava/lang/String;
    .locals 2

    .line 24462
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24463
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 24464
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24466
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24467
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24468
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 24472
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSwiftPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24487
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24488
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24489
    check-cast v0, Ljava/lang/String;

    .line 24490
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24492
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    return-object v0

    .line 24495
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 25048
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25049
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    .line 25051
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 25242
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final getUninterpretedOptionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            ">;"
        }
    .end annotation

    .line 25310
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 25033
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25034
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 25036
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 25018
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25019
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25021
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 25254
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25255
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    .line 25256
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public final getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25269
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25270
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25272
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasCcEnableArenas()Z
    .locals 1

    .line 24189
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCcGenericServices()Z
    .locals 1

    .line 23960
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCsharpNamespace()Z
    .locals 1

    .line 24346
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeprecated()Z
    .locals 1

    .line 24131
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGoPackage()Z
    .locals 1

    .line 23832
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23675
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaGenericServices()Z
    .locals 1

    .line 24028
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaMultipleFiles()Z
    .locals 1

    .line 23612
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaOuterClassname()Z
    .locals 1

    .line 23487
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaPackage()Z
    .locals 2

    .line 23368
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaStringCheckUtf8()Z
    .locals 1

    .line 23728
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObjcClassPrefix()Z
    .locals 1

    .line 24241
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptimizeFor()Z
    .locals 1

    .line 23787
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpClassPrefix()Z
    .locals 2

    .line 24565
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpGenericServices()Z
    .locals 1

    .line 24092
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpMetadataNamespace()Z
    .locals 2

    .line 24784
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpNamespace()Z
    .locals 2

    .line 24672
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPyGenericServices()Z
    .locals 1

    .line 24060
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRubyPackage()Z
    .locals 2

    .line 24896
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSwiftPrefix()Z
    .locals 2

    .line 24449
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 22948
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$15000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 22949
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23325
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 23326
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23330
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

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

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23343
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 23349
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23345
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23346
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

    .line 23349
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23351
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .line 23210
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 23211
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23212
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23213
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23216
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23217
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23218
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$15500(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23221
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23224
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23225
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenerateEqualsAndHash(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23227
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23228
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaStringCheckUtf8(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23230
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23231
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23233
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23234
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23235
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16000(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23238
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23239
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setCcGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23241
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23242
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23244
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23245
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setPyGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23247
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23248
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setPhpGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23250
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23251
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23253
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23254
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setCcEnableArenas(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23256
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23257
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23258
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16700(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 23259
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23261
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 23262
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23263
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16800(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 23264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23266
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 23267
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23268
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$16900(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 23269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23271
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23272
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23273
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17000(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 23274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23276
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23277
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23278
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17100(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 23279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23281
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 23282
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23283
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17200(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 23284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23286
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23287
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23288
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17300(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 23289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 23291
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x100001

    if-nez v0, :cond_16

    .line 23292
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 23293
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23294
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 23295
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 23297
    :cond_15
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 23298
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23300
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_1

    .line 23303
    :cond_16
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 23304
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 23305
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 23306
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 23307
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 23308
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23309
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_17

    .line 23311
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 23313
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 23317
    :cond_19
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 23318
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 23319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23201
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 23202
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1

    .line 23204
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

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

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 25335
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25223
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25224
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25225
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25228
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCcEnableArenas(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24211
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24212
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    .line 24213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCcGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23996
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23997
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 23998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCsharpNamespace(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24399
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24401
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24402
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCsharpNamespaceBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24431
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24432
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 24433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24157
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24158
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 24159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 23184
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "TType;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 23177
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 23148
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGoPackage(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23897
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23899
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23900
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23901
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGoPackageBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23935
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23937
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23938
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 23939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaGenerateEqualsAndHash(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23695
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23696
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 23697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24040
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24041
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 24042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaMultipleFiles(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23642
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23643
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 23644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaOuterClassname(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23552
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23554
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23555
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaOuterClassnameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23590
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23592
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23593
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 23594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaPackage(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23430
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23432
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23433
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaPackageBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23466
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23468
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23469
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 23470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJavaStringCheckUtf8(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23758
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23759
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 23760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setObjcClassPrefix(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24297
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24299
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24300
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setObjcClassPrefixBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24329
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24331
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24332
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 24333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptimizeFor(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23802
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23804
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 23805
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 23806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpClassPrefix(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24623
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24624
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpClassPrefixBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24653
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24655
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24656
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 24657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24104
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24105
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    .line 24106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpMetadataNamespace(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24843
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24845
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24846
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpMetadataNamespaceBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24879
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24880
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 24881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpNamespace(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24731
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24733
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24734
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhpNamespaceBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24765
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24767
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24768
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 24769
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPyGenericServices(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 24072
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24073
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 24074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 23164
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRubyPackage(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24955
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24957
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24958
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRubyPackageBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24991
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24992
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->rubyPackage_:Ljava/lang/Object;

    .line 24993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSwiftPrefix(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24511
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24513
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24514
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSwiftPrefixBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 24547
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24549
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 24550
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 24551
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25086
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25087
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25088
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25091
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 25064
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25066
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25068
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 25069
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25070
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 25072
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 25329
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22935
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

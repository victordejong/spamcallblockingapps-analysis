.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private allowAlias_:Z

.field private bitField0_:I

.field private deprecated_:Z

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
    .locals 1

    .line 30860
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    .line 31193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30861
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 30841
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 30866
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 31193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30867
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 30841
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .line 31195
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 31196
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31197
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30848
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$21000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 31492
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 31493
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 31497
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 31498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 31499
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31501
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 30870
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 30872
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 31371
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31372
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31373
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 31375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31377
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Ljava/util/List<",
            "TType;>;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 30989
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 30968
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31353
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31354
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31355
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31356
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31358
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31314
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31316
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31318
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31319
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31322
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31335
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31336
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31337
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31340
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31293
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31297
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31298
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOptionBuilder()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 31463
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 31464
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 31463
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final addUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 31475
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 31476
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 31475
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 2

    .line 30904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    .line 30905
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 30906
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 3

    .line 30913
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 30914
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 30917
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->allowAlias_:Z

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21502(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Z)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 30921
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->deprecated_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21602(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Z)Z

    or-int/lit8 v2, v2, 0x2

    .line 30924
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 30925
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 30926
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30927
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 30929
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21702(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 30931
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21702(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 30933
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21802(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;I)I

    .line 30934
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .line 30877
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const/4 v0, 0x0

    .line 30878
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->allowAlias_:Z

    .line 30879
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 30880
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->deprecated_:Z

    and-int/lit8 v0, v1, -0x3

    .line 30881
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 30882
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 30883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30884
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 30886
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAllowAlias()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31126
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 31127
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->allowAlias_:Z

    .line 31128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeprecated()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31186
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 31187
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->deprecated_:Z

    .line 31188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "*>;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 30995
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 30951
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 30956
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearUninterpretedOption()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31389
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31391
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 31392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31394
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 30940
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

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

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAllowAlias()Z
    .locals 1

    .line 31101
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->allowAlias_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 30899
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 30841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 31157
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30894
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$21000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 31240
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31241
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    .line 31243
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 31424
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 31487
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 31226
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31227
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 31229
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

    .line 31212
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31213
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 31215
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 31435
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31436
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    .line 31437
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

    .line 31449
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 31450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 31452
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasAllowAlias()Z
    .locals 2

    .line 31090
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeprecated()Z
    .locals 1

    .line 31144
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 30854
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$21100()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 30855
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31049
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31050
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31054
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->extensionsAreInitialized()Z

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

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

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

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31067
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31073
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31069
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31070
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

    .line 31073
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31075
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .line 31008
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 31009
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->hasAllowAlias()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31010
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getAllowAlias()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setAllowAlias(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31012
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31013
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31015
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 31016
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 31017
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31018
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31019
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 31021
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31022
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31024
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_1

    .line 31027
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 31028
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31029
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 31030
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 31031
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31032
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 31033
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_5

    .line 31035
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 31037
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->access$21700(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 31041
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeExtensionFields(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 31042
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31043
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 30999
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 31000
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1

    .line 31002
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

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

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

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31512
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31406
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31407
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31408
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31411
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAllowAlias(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31112
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 31113
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->allowAlias_:Z

    .line 31114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31170
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->bitField0_:I

    .line 31171
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->deprecated_:Z

    .line 31172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 30982
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "TType;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 30975
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 30946
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 30962
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31276
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31277
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31278
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31281
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31255
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31257
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31259
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31260
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31261
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_0

    .line 31263
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

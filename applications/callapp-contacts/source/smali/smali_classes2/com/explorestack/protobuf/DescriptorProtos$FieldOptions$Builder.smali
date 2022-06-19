.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ctype_:I

.field private deprecated_:Z

.field private jstype_:I

.field private lazy_:Z

.field private packed_:Z

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

.field private weak_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28283
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    const/4 v0, 0x0

    .line 28539
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    .line 28668
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    .line 29006
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28284
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 28264
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 28289
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 28539
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    .line 28668
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    .line 29006
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28290
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 28264
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .line 29008
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 29009
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 29010
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28271
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$18900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 29305
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29306
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29310
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 29311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 29312
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 29314
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 28293
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 28295
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 29184
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29185
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29186
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29190
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/util/List<",
            "TType;>;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 28436
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 28415
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29166
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29167
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29168
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29171
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29127
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29131
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29132
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29135
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29148
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29149
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29150
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29153
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29106
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29110
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29111
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29114
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUninterpretedOptionBuilder()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 29276
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29277
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 29276
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final addUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 29288
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29289
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 29288
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 2

    .line 28335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    .line 28336
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28337
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 4

    .line 28344
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 28345
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28350
    :goto_0
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19402(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 28352
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19502(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 28358
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19602(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 28360
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19702(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    .line 28364
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19802(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 28368
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$19902(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x20

    .line 28371
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    .line 28372
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 28373
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28374
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28376
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20002(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 28378
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20002(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 28380
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20102(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    .line 28381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .line 28300
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const/4 v0, 0x0

    .line 28301
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    .line 28302
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28303
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    and-int/lit8 v1, v1, -0x3

    .line 28304
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28305
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    and-int/lit8 v1, v1, -0x5

    .line 28306
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28307
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    and-int/lit8 v1, v1, -0x9

    .line 28308
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28309
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    and-int/lit8 v1, v1, -0x11

    .line 28310
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28311
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    and-int/lit8 v0, v1, -0x21

    .line 28312
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28313
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28315
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 28317
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearCtype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28598
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28599
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    .line 28600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeprecated()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28951
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28952
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    .line 28953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "*>;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 28442
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 28398
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearJstype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28751
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28752
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    .line 28753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLazy()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28891
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28892
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    .line 28893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 28403
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearPacked()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28662
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28663
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    .line 28664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUninterpretedOption()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29202
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 29204
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 29205
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29207
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearWeak()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28999
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 29000
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    .line 29001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28387
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCtype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 28565
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28566
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    :cond_0
    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 28330
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 28922
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28325
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$18900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getJstype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 28706
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28707
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    :cond_0
    return-object v0
.end method

.method public final getLazy()Z
    .locals 1

    .line 28822
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    return v0
.end method

.method public final getPacked()Z
    .locals 1

    .line 28631
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    return v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 29053
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29054
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    .line 29056
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 29237
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 29300
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 29039
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29040
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 29042
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

    .line 29025
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29026
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29028
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 29248
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29249
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    .line 29250
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

    .line 29262
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29263
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29265
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getWeak()Z
    .locals 1

    .line 28976
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    return v0
.end method

.method public final hasCtype()Z
    .locals 2

    .line 28551
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

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

    .line 28909
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJstype()Z
    .locals 1

    .line 28686
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLazy()Z
    .locals 1

    .line 28789
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPacked()Z
    .locals 1

    .line 28617
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWeak()Z
    .locals 1

    .line 28966
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 28277
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$19000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28278
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28508
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28509
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28513
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->extensionsAreInitialized()Z

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

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28526
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 28532
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28528
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28529
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

    .line 28532
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28534
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .line 28455
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 28456
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28457
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28459
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28460
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28462
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28463
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getJstype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setJstype(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28465
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28466
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setLazy(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28468
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28469
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28471
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28472
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setWeak(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28474
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 28475
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 28476
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28477
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28478
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 28480
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 28481
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28483
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_1

    .line 28486
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 28487
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28488
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 28489
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 28490
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 28491
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28492
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_9

    .line 28494
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 28496
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 28500
    :cond_b
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeExtensionFields(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 28501
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28446
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    .line 28447
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1

    .line 28449
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

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 29325
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29219
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29220
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29221
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29222
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29224
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCtype(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28580
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28582
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28583
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:I

    .line 28584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeprecated(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28935
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28936
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    .line 28937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 28429
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "TType;>;TType;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 28422
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 28393
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setJstype(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28727
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28729
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28730
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->jstype_:I

    .line 28731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLazy(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28855
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28856
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    .line 28857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPacked(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28645
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28646
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    .line 28647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 28409
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29089
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29090
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29091
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29092
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29094
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29068
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29070
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29072
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 29073
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_0

    .line 29076
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 0

    .line 29319
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setWeak(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28986
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    .line 28987
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    .line 28988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

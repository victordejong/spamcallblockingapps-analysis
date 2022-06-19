.class public final Lcom/explorestack/protobuf/EnumValue$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/EnumValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/EnumValue$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 426
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 603
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 427
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/EnumValue$1;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 603
    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 433
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/EnumValue$1;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 733
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 735
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 414
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1031
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1035
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1037
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 436
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/EnumValue$Builder;"
        }
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 911
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 893
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 896
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 854
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 857
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 875
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 833
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 836
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1001
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1002
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1001
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1013
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1014
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1013
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 526
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/EnumValue;
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->buildPartial()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/explorestack/protobuf/EnumValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 472
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/EnumValue$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/EnumValue;
    .locals 2

    .line 479
    new-instance v0, Lcom/explorestack/protobuf/EnumValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/EnumValue;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/EnumValue$1;)V

    .line 481
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/EnumValue;->access$302(Lcom/explorestack/protobuf/EnumValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->number_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/EnumValue;->access$402(Lcom/explorestack/protobuf/EnumValue;I)I

    .line 483
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 484
    iget v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 486
    iget v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/EnumValue;->access$502(Lcom/explorestack/protobuf/EnumValue;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/EnumValue;->access$502(Lcom/explorestack/protobuf/EnumValue;Ljava/util/List;)Ljava/util/List;

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->buildPartial()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->buildPartial()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clear()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 443
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 444
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->number_:I

    .line 448
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 450
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clear()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clear()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clear()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 509
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 669
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNumber()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 725
    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->number_:I

    .line 726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 514
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 928
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 929
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    .line 930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 498
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

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

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->clone()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;
    .locals 1

    .line 465
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 460
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 613
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 614
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 616
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 617
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 620
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 633
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 634
    check-cast v0, Ljava/lang/String;

    .line 635
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 637
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 640
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->number_:I

    return v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 781
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 962
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final getOptionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option$Builder;",
            ">;"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 767
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 753
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 975
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public final getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 420
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/EnumValue;

    const-class v2, Lcom/explorestack/protobuf/EnumValue$Builder;

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/EnumValue$Builder;

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

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 590
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->access$600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/EnumValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
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

    .line 596
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;

    .line 598
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2

    .line 539
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 540
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$300(Lcom/explorestack/protobuf/EnumValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    .line 544
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getNumber()I

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/EnumValue$Builder;->setNumber(I)Lcom/explorestack/protobuf/EnumValue$Builder;

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 548
    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 549
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 551
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    goto :goto_0

    .line 553
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 554
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_1

    .line 559
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 560
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 563
    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    .line 564
    iget v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->bitField0_:I

    .line 565
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_5

    .line 567
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/EnumValue;->access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 573
    :cond_7
    :goto_1
    iget-object p1, p1, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    .line 574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 530
    instance-of v0, p1, Lcom/explorestack/protobuf/EnumValue;

    if-eqz v0, :cond_0

    .line 531
    check-cast p1, Lcom/explorestack/protobuf/EnumValue;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1

    .line 533
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/EnumValue$Builder;

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

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 1050
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 946
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 504
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 653
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 687
    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->name_:Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNumber(I)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 712
    iput p1, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->number_:I

    .line 713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 816
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 795
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->ensureOptionsIsMutable()V

    .line 798
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->onChanged()V

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 520
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/EnumValue$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/EnumValue$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 0

    .line 1044
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

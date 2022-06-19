.class public final Lcom/explorestack/protobuf/ListValue$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ListValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ListValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/ListValue$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/ListValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Value;",
            "Lcom/explorestack/protobuf/Value$Builder;",
            "Lcom/explorestack/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private values_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 341
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 347
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/ListValue$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/ListValue$1;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;-><init>()V

    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 507
    iget v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 509
    iget v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 328
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_ListValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Value;",
            "Lcom/explorestack/protobuf/Value$Builder;",
            "Lcom/explorestack/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 805
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 809
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 350
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllValues(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Value;",
            ">;)",
            "Lcom/explorestack/protobuf/ListValue$Builder;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 685
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 434
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addValues(ILcom/explorestack/protobuf/Value$Builder;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 667
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValues(ILcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 628
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 631
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValues(Lcom/explorestack/protobuf/Value$Builder;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 649
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 607
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 610
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValuesBuilder()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 775
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 776
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Value$Builder;

    return-object v0
.end method

.method public final addValuesBuilder(I)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 787
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 788
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 787
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/ListValue;
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 382
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/ListValue$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/ListValue;
    .locals 2

    .line 389
    new-instance v0, Lcom/explorestack/protobuf/ListValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/ListValue;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/ListValue$1;)V

    .line 391
    iget-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 392
    iget v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 394
    iget v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/ListValue;->access$302(Lcom/explorestack/protobuf/ListValue;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/ListValue;->access$302(Lcom/explorestack/protobuf/ListValue;Ljava/util/List;)Ljava/util/List;

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clear()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clear()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 357
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 358
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 360
    iget v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clear()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clear()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 422
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearValues()Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 703
    iget v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    .line 704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 406
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

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

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->clone()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/ListValue;
    .locals 1

    .line 375
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 370
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_ListValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getValues(I)Lcom/explorestack/protobuf/Value;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;

    return-object p1

    .line 555
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;

    return-object p1
.end method

.method public final getValuesBuilder(I)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 736
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final getValuesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Value$Builder;",
            ">;"
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValuesCount()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 541
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 527
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValuesOrBuilder(I)Lcom/explorestack/protobuf/ValueOrBuilder;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ValueOrBuilder;

    return-object p1

    .line 749
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ValueOrBuilder;

    return-object p1
.end method

.method public final getValuesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 334
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_ListValue_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/ListValue;

    const-class v2, Lcom/explorestack/protobuf/ListValue$Builder;

    .line 335
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

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/ListValue$Builder;

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

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 491
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->access$400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/ListValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
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

    .line 497
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 499
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 2

    .line 447
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 449
    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 452
    iget v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 455
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_1

    .line 460
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 464
    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    .line 465
    iget v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/ListValue$Builder;->bitField0_:I

    .line 466
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 470
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/ListValue;->access$300(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 474
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/explorestack/protobuf/ListValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 438
    instance-of v0, p1, Lcom/explorestack/protobuf/ListValue;

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1

    .line 441
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

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/ListValue$Builder;

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

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 824
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeValues(I)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 720
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 412
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ListValue$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/ListValue$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 428
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/ListValue$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 0

    .line 818
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setValues(ILcom/explorestack/protobuf/Value$Builder;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 590
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setValues(ILcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->valuesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 569
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->ensureValuesIsMutable()V

    .line 572
    iget-object v0, p0, Lcom/explorestack/protobuf/ListValue$Builder;->values_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue$Builder;->onChanged()V

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

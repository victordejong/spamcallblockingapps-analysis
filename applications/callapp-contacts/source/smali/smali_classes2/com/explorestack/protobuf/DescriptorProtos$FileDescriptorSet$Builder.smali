.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
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

.field private file_:Ljava/util/List;
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

    .line 365
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 366
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 372
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureFileIsMutable()V
    .locals 2

    .line 537
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 539
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 353
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
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

    .line 762
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 763
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 767
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 375
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllFile(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 675
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 661
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 630
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 633
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFile(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 647
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFile(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 613
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 616
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFileBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 741
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 742
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    .line 741
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object v0
.end method

.method public final addFileBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 749
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 750
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    .line 749
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 459
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 407
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 2

    .line 414
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 416
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 417
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 419
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 383
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 385
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 442
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearFile()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 689
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    .line 690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 447
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 431
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    .line 400
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 395
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1

    .line 573
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1
.end method

.method public final getFileBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 714
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final getFileBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 757
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFileCount()I
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 553
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFileOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1

    .line 723
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getFileOrBuilderList()Ljava/util/List;
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

    .line 731
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 359
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$100()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    .line 360
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 507
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

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

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 521
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 523
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
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

    .line 527
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    .line 529
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    .line 472
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 474
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 477
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 480
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_1

    .line 485
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 489
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    .line 490
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    .line 491
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 493
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 499
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    .line 500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 463
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    if-eqz v0, :cond_0

    .line 464
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1

    .line 466
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

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 782
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeFile(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 702
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 437
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 600
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setFile(ILcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 583
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    .line 586
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->onChanged()V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 0

    .line 776
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

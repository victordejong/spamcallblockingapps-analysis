.class public final Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14664
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 14863
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14952
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 15041
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14665
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 14670
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14863
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 15041
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14671
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 14646
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 14646
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 15286
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 15287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 15288
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14652
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15272
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15273
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 15275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 15276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 15277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 15278
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15280
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15583
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15584
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 15588
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 15589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 15590
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 15592
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 14675
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$12700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14676
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;"
        }
    .end annotation

    .line 15462
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15463
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 15466
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15468
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15444
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15445
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15446
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15449
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15405
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15407
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15409
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15410
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15413
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15427
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15431
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15388
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15389
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15392
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 15554
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 15555
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 15554
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 15566
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 15567
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 15566
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14778
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 2

    .line 14716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    .line 14717
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14718
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 2

    .line 14725
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 14727
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$12902(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14728
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13002(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14729
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13102(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14730
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 14731
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13202(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 14733
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13202(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 14735
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 14736
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 14737
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14738
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    .line 14740
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13302(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14742
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13302(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/util/List;)Ljava/util/List;

    .line 14744
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 14681
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 14682
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14684
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 14686
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 14688
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 14689
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 14691
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 14692
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14694
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14695
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14696
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    goto :goto_1

    .line 14698
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 15225
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 15226
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15229
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15230
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15480
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 15482
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    .line 15483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15485
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14761
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14929
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15018
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 15019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14766
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final clearValue()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15107
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14750
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 14711
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14706
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 15151
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15152
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 15154
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 15244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    .line 15245
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 15255
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 15256
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 15258
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 15259
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 15331
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15332
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 15334
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 15515
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final getExtProtoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any$Builder;",
            ">;"
        }
    .end annotation

    .line 15578
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 15317
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15318
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 15320
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 15303
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15304
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 15306
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 15526
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15527
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 15528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 15541
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 15543
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 14872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14873
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14874
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14876
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14877
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 14880
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14892
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14893
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14894
    check-cast v0, Ljava/lang/String;

    .line 14895
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14897
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 14900
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 14961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 14962
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14963
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14965
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14966
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 14969
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14981
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 14982
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14983
    check-cast v0, Ljava/lang/String;

    .line 14984
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14986
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 14989
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 15050
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15051
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15052
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15054
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15055
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    return-object v0

    .line 15058
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15070
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15071
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15072
    check-cast v0, Ljava/lang/String;

    .line 15073
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15075
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    return-object v0

    .line 15078
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 15141
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14658
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14659
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15204
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 15206
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 15208
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15210
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_1

    .line 15212
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

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

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

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

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

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

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14850
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 14856
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14852
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14853
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

    .line 14856
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14858
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14782
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    if-eqz v0, :cond_0

    .line 14783
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1

    .line 14785
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 14791
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 14792
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14793
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$12900(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14794
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    .line 14796
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14797
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13000(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 14798
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    .line 14800
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14801
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13100(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 14802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    .line 14804
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14805
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14807
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 14808
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 14809
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14810
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14811
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    goto :goto_0

    .line 14813
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 14814
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14816
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_1

    .line 14819
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 14820
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14821
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 14822
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 14823
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    .line 14824
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->bitField0_:I

    .line 14826
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13400()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14827
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 14829
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 14833
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13500(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15603
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15497
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15498
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15499
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15502
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15186
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15187
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15190
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15165
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15169
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 15170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15172
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15367
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15368
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15369
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15372
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15346
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15348
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15350
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->ensureExtProtoIsMutable()V

    .line 15351
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    goto :goto_0

    .line 15354
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14756
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14913
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14916
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14943
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14945
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13700(Lcom/explorestack/protobuf/ByteString;)V

    .line 14947
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->id_:Ljava/lang/Object;

    .line 14948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15002
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15005
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 15006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15032
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15034
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13800(Lcom/explorestack/protobuf/ByteString;)V

    .line 15036
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->name_:Ljava/lang/Object;

    .line 15037
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 14772
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14646
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15597
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15091
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15094
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 0

    .line 15121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15123
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->access$13900(Lcom/explorestack/protobuf/ByteString;)V

    .line 15125
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->value_:Ljava/lang/Object;

    .line 15126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->onChanged()V

    return-object p0
.end method

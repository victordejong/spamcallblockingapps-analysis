.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;"
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

.field private type_:Ljava/lang/Object;

.field private value_:F

.field private vendor_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3680
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3878
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 4013
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3681
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3686
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3878
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 4013
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3687
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 3662
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 3662
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 4263
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 4264
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 4265
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3668
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 4249
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4250
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 4253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4254
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4255
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 4560
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4561
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4565
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4567
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 4569
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3691
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;"
        }
    .end annotation

    .line 4439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4440
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4445
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4421
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4422
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4423
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4426
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4384
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4386
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4387
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4390
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4403
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4404
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4405
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4406
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4408
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4366
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4369
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 4531
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4532
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 4531
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 4543
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4544
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 4543
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3794
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 2

    .line 3732
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    .line 3733
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3734
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 2

    .line 3741
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 3743
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2502(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->value_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2602(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;F)F

    .line 3745
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2702(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 3747
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2802(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 3749
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2802(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 3751
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3752
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3753
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3754
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    .line 3756
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2902(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 3758
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2902(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/util/List;)Ljava/util/List;

    .line 3760
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 3697
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3698
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3700
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->value_:F

    .line 3702
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 3704
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3705
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 3707
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3708
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3710
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3712
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    goto :goto_1

    .line 3714
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 4202
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4203
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4206
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4207
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4457
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 4459
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    .line 4460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4462
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3777
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3782
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final clearType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3948
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValue()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4008
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->value_:F

    .line 4009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVendor()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4083
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3766
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 3727
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3722
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 4128
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4129
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4131
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 4221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    .line 4222
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 4232
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4233
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 4235
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 4236
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 4308
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4309
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 4311
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 4492
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 4555
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 4294
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4295
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4297
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

    .line 4280
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4281
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4283
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 4503
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4504
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 4505
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

    .line 4517
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4518
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4520
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    .line 3888
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3889
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3890
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3892
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3893
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 3896
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3909
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3910
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3911
    check-cast v0, Ljava/lang/String;

    .line 3912
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3914
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 3917
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 3982
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->value_:F

    return v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 2

    .line 4023
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4024
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4025
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4027
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4028
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    return-object v0

    .line 4031
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getVendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4044
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4045
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4046
    check-cast v0, Ljava/lang/String;

    .line 4047
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4049
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    return-object v0

    .line 4052
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 4118
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 3674
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3675
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4180
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4181
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 4183
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4185
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4187
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_1

    .line 4189
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

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

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

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

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

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

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

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3865
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$3200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3871
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3867
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3868
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

    .line 3871
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3873
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3798
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    if-eqz v0, :cond_0

    .line 3799
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1

    .line 3801
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 3807
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3808
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3809
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2500(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    .line 3812
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 3813
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setValue(F)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3815
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3816
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2700(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 3817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    .line 3819
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3820
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3822
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 3823
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3824
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3825
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3826
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    goto :goto_0

    .line 3828
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 3829
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3831
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_1

    .line 3834
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3835
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3836
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 3837
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3838
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    .line 3839
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->bitField0_:I

    .line 3841
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3842
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 3844
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3848
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$3100(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 4580
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4474
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4475
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4476
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4479
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4163
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4164
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4167
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4142
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4146
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4149
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4344
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4345
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4346
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4349
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 4323
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4325
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->ensureExtProtoIsMutable()V

    .line 4328
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    goto :goto_0

    .line 4331
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3772
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3788
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final setType(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3931
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3963
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3965
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 3967
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->type_:Ljava/lang/Object;

    .line 3968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3662
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 4574
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final setValue(F)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 3994
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->value_:F

    .line 3995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVendor(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 4066
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4069
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4070
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVendorBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 0

    .line 4098
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4100
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4102
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->vendor_:Ljava/lang/Object;

    .line 4103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->onChanged()V

    return-object p0
.end method

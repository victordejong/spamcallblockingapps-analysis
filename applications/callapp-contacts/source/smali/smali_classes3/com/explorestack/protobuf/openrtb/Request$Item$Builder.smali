.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end field

.field private dlvy_:I

.field private dt_:Ljava/lang/Object;

.field private exp_:I

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

.field private flr_:D

.field private flrcur_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metric_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private private_:Z

.field private qty_:I

.field private seq_:I

.field private specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private spec_:Lcom/explorestack/protobuf/Any;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7643
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 7976
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8190
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8330
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8784
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7644
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7649
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 7976
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8190
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8330
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8784
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7650
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 7625
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 7625
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>()V

    return-void
.end method

.method private ensureDealIsMutable()V
    .locals 2

    .line 8786
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 8787
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 8788
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 9496
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 9497
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 9498
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMetricIsMutable()V
    .locals 2

    .line 8474
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 8475
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8476
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9083
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9084
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9088
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 9089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9090
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9092
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7631
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 9482
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9483
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 9486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9488
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9490
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 9793
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9794
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9798
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 9799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9800
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 9802
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8771
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8772
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 8776
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 8778
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8780
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9329
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9330
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9335
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9337
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 7654
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$5800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7655
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7656
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7657
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllDeal(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 8962
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8963
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8964
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8966
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8968
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 9672
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9673
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9674
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9678
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMetric(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 8650
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8651
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8652
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8654
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8656
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8944
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8945
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8946
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8949
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8905
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8907
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8909
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8910
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8913
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8926
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8927
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8928
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8931
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8884
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8888
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8889
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8892
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addDealBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 9054
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9055
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v1

    .line 9054
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object v0
.end method

.method public final addDealBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 9066
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9067
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v1

    .line 9066
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9654
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9655
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9656
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9659
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9615
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9617
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9619
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9620
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9621
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9623
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9636
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9637
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9638
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9641
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9594
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9596
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9598
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9599
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9602
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9764
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9765
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9764
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9776
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9777
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9776
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8632
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8633
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8634
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8637
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8593
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8595
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8597
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8598
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8601
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMetric(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8614
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8615
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8616
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8619
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMetric(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8572
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8574
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8576
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8577
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8580
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMetricBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 8742
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8743
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v1

    .line 8742
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object v0
.end method

.method public final addMetricBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 8754
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8755
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v1

    .line 8754
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 7818
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 2

    .line 7727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    .line 7728
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7729
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 3

    .line 7736
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 7738
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6002(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7739
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6102(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 7740
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6202(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 7741
    iget-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6302(Lcom/explorestack/protobuf/openrtb/Request$Item;D)D

    .line 7742
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6402(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7743
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6502(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 7744
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6602(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7745
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6702(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 7746
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 7747
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7748
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 7749
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7751
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7753
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 7755
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 7756
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 7757
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 7758
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7760
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 7762
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 7764
    :goto_1
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7002(Lcom/explorestack/protobuf/openrtb/Request$Item;Z)Z

    .line 7765
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 7766
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 7768
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 7770
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 7771
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 7773
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 7775
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    .line 7776
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 7777
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7778
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7780
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 7782
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 7784
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 4

    .line 7662
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 7663
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7665
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 7667
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    const-wide/16 v2, 0x0

    .line 7669
    iput-wide v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 7671
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 7673
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 7675
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 7677
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 7679
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 7681
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_0

    .line 7683
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 7685
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7686
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 7687
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_1

    .line 7689
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 7691
    :goto_1
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 7693
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 7694
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 7696
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 7697
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7699
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 7700
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 7702
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 7703
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7705
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 7706
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7707
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_4

    .line 7709
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public final clearDeal()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8980
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 8982
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8985
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearDlvy()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8466
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 8467
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDt()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8400
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExp()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8325
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 8326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 9435
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9436
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9439
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9440
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9690
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9691
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 9692
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 9693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9695
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 7801
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final clearFlr()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 8185
    iput-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 8186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFlrcur()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8264
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearId()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8046
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMetric()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8668
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8670
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8673
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 7806
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final clearPrivate()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9137
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 9138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearQty()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8106
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 8107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSeq()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8147
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    .line 8148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSpec()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 9267
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9268
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9271
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9272
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7790
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 8831
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8832
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1

    .line 8834
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1
.end method

.method public final getDealBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 9015
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final getDealBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            ">;"
        }
    .end annotation

    .line 9078
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDealCount()I
    .locals 1

    .line 8817
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8818
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8820
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getDealList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 8803
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8804
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8806
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDealOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;
    .locals 1

    .line 9026
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9027
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1

    .line 9028
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1
.end method

.method public final getDealOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9040
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9041
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9043
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 7722
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7717
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDlvy()I
    .locals 1

    .line 8436
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    return v0
.end method

.method public final getDt()Ljava/lang/String;
    .locals 2

    .line 8340
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8341
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8342
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8345
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    return-object v0

    .line 8348
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8362
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8363
    check-cast v0, Ljava/lang/String;

    .line 8364
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8366
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    return-object v0

    .line 8369
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExp()I
    .locals 1

    .line 8299
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 9361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9362
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9364
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 9454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 9455
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 9465
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9466
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 9468
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 9469
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9541
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9542
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 9544
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 9725
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 9788
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 9527
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9528
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9530
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

    .line 9513
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9514
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9516
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 9736
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9737
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 9738
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

    .line 9750
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9751
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9753
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFlr()D
    .locals 2

    .line 8161
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    return-wide v0
.end method

.method public final getFlrcur()Ljava/lang/String;
    .locals 2

    .line 8201
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8202
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8203
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8205
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8206
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 8209
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8223
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8225
    check-cast v0, Ljava/lang/String;

    .line 8226
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8228
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 8231
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 7986
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 7987
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7988
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7990
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7991
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 7994
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8007
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8008
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8009
    check-cast v0, Ljava/lang/String;

    .line 8010
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8012
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8015
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 8519
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8520
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1

    .line 8522
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1
.end method

.method public final getMetricBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 8703
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public final getMetricBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            ">;"
        }
    .end annotation

    .line 8766
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMetricCount()I
    .locals 1

    .line 8505
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8506
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8508
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 8491
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8492
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8494
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMetricOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    .locals 1

    .line 8714
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8715
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1

    .line 8716
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1
.end method

.method public final getMetricOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8728
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 8729
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8731
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPrivate()Z
    .locals 1

    .line 9107
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    return v0
.end method

.method public final getQty()I
    .locals 1

    .line 8080
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    return v0
.end method

.method public final getSeq()I
    .locals 1

    .line 8121
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    return v0
.end method

.method public final getSpec()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9173
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9174
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9176
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public final getSpecBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 9291
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 9292
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final getSpecOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 9307
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9308
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 9310
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 9311
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 9351
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasSpec()Z
    .locals 1

    .line 9158
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

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

    .line 7637
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7638
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9413
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9414
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 9416
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 9418
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9420
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_1

    .line 9422
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

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7963
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7969
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7965
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Item;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7966
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

    .line 7969
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7971
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7822
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_0

    .line 7823
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1

    .line 7825
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 5

    .line 7831
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7832
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7833
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6000(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 7834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 7836
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7837
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7839
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v0

    if-eqz v0, :cond_3

    .line 7840
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setSeq(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7842
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    .line 7843
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7845
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7846
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6400(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 7847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 7849
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v0

    if-eqz v0, :cond_6

    .line 7850
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setExp(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7852
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7853
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6600(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 7854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 7856
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v0

    if-eqz v0, :cond_8

    .line 7857
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setDlvy(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7859
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 7860
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7861
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7862
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 7863
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_0

    .line 7865
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 7866
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7868
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_2

    .line 7871
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7872
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7873
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 7874
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7875
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 7876
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7878
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7879
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_b
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 7881
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7885
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 7886
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7888
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 7889
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_3

    .line 7891
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 7892
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7894
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_5

    .line 7897
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7898
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7899
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 7900
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7901
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 7902
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7904
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7500()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7905
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_10
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 7907
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7911
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7912
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setPrivate(Z)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7914
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7915
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7917
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7918
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7920
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_17

    .line 7921
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 7922
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7923
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7924
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_6

    .line 7926
    :cond_16
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 7927
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7929
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_7

    .line 7932
    :cond_17
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 7933
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7934
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 7935
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7936
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7937
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 7939
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7600()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7940
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_18
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 7942
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7946
    :cond_1a
    :goto_7
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7700(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9240
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9241
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 9243
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 9245
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9247
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_1

    .line 9249
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 9813
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final removeDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8997
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8998
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8999
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9002
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9707
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9708
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9709
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9712
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8685
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8686
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8687
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8690
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8867
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8868
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8869
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8872
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8846
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8848
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8850
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8851
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8854
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setDlvy(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8450
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 8451
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDt(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8386
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDtBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8415
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8417
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$8100(Lcom/explorestack/protobuf/ByteString;)V

    .line 8419
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExp(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8311
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 8312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9396
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9397
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9400
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9375
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9379
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9382
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9577
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9578
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9579
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9582
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9556
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9558
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9560
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9561
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9564
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 7796
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8172
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 8173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8249
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFlrcurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8280
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8282
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$8000(Lcom/explorestack/protobuf/ByteString;)V

    .line 8284
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8029
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8032
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8033
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8061
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8063
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7900(Lcom/explorestack/protobuf/ByteString;)V

    .line 8065
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8555
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8556
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8557
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8560
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8534
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8536
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8538
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8539
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8542
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setPrivate(Z)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 9121
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 9122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8092
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 8093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 7812
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final setSeq(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8133
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    .line 8134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSpec(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9218
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9219
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9220
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9222
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9192
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9196
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9197
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9199
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7625
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 9807
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

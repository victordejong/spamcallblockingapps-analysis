.class public final Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;"
    }
.end annotation


# instance fields
.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private boxing_:Z

.field private clktype_:I

.field private compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private comp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation
.end field

.field private comptype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ctype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delay_:I

.field private delivery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private h_:I

.field private linear_:I

.field private maxbitr_:I

.field private maxdur_:I

.field private maxext_:I

.field private maxseq_:I

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private minbitr_:I

.field private mindur_:I

.field private playend_:I

.field private playmethod_:I

.field private pos_:I

.field private ptype_:I

.field private skip_:Z

.field private skipafter_:I

.field private skipmin_:I

.field private unit_:I

.field private w_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22233
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 22658
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22723
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22946
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 23011
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 23076
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 23141
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 23438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 23679
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 23935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 24138
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 24242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 24572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 24891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22234
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 22239
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 22658
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22723
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22946
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 23011
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 23076
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 23141
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 23438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 23679
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 23935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 24138
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 24242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 24572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 24891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22240
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 22215
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 22215
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>()V

    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 23274
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 23275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 23276
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCompIsMutable()V
    .locals 2

    .line 24244
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 24245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 24246
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureComptypeIsMutable()V
    .locals 2

    .line 24574
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 24575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 24576
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCtypeIsMutable()V
    .locals 2

    .line 23440
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 23441
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 23442
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDeliveryIsMutable()V
    .locals 2

    .line 23937
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 23938
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 23939
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 24893
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 24894
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 24895
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMimeIsMutable()V
    .locals 2

    .line 23143
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 23144
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23145
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24559
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24560
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 24564
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 24565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 24566
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 24568
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22221
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 24879
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24880
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 24883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 24885
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24887
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 25190
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25191
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 25195
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 25196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 25197
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 25199
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 22244
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$15700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22245
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22246
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllApi(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 23352
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23353
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 23354
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23356
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllApiValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 23429
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23430
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23431
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23433
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllComp(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 24430
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24431
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24432
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 24434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24436
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllComptype(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 24652
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24653
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/CompanionType;

    .line 24654
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/CompanionType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24656
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllComptypeValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 24729
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24730
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24731
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24733
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllCtype(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 23518
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23519
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 23520
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23522
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllCtypeValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 23595
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23596
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23597
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23599
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllDelivery(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 24015
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 24016
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/DeliveryMethod;

    .line 24017
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/DeliveryMethod;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24019
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllDeliveryValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 24092
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 24093
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24094
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24096
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 25069
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25070
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 25071
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25075
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;"
        }
    .end annotation

    .line 23233
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureMimeIsMutable()V

    .line 23234
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 23236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23336
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23338
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23339
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApiValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23415
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23416
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addComp(ILcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24412
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24413
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24416
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addComp(ILcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24370
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24372
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24374
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24375
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24378
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addComp(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24392
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24393
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24394
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24395
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24397
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addComp(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24348
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24352
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24353
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24356
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addCompBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 2

    .line 24528
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24529
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object v1

    .line 24528
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    return-object v0
.end method

.method public final addCompBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 2

    .line 24541
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24542
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object v1

    .line 24541
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    return-object p1
.end method

.method public final addComptype(Lcom/explorestack/protobuf/adcom/CompanionType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24636
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24638
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24639
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CompanionType;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24640
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addComptypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24715
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24716
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23502
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23504
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23505
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCtypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23581
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23582
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addDelivery(Lcom/explorestack/protobuf/adcom/DeliveryMethod;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23999
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24001
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 24002
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeliveryMethod;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24003
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addDeliveryValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24078
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 24079
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24080
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 25051
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25052
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 25053
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25056
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 25012
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25014
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25016
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 25017
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25020
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 25033
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25034
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 25035
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25038
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24993
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24995
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 24996
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24999
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 25161
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25162
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 25161
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 25173
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25174
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 25173
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addMime(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23219
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureMimeIsMutable()V

    .line 23220
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addMimeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23264
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19100(Lcom/explorestack/protobuf/ByteString;)V

    .line 23265
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureMimeIsMutable()V

    .line 23266
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 23267
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22449
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 2

    .line 22336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    .line 22337
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 22338
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 2

    .line 22345
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 22347
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$15902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22348
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22349
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delay_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22350
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skip_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z

    .line 22351
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipmin_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22352
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipafter_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22353
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22354
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22355
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22356
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 22357
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 22358
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22360
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 22361
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 22362
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 22363
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22365
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22366
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 22367
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 22368
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22370
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22371
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->w_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22372
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->h_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22373
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22374
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mindur_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22375
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxdur_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22376
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxext_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22377
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->minbitr_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22378
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxbitr_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22379
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 22380
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 22381
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22383
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22384
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxseq_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22385
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I

    .line 22386
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->boxing_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z

    .line 22387
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    .line 22388
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 22389
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 22390
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22392
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 22394
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22396
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 22397
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 22398
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22400
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22401
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 22402
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 22404
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 22406
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 22407
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    .line 22408
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22409
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22411
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 22413
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;

    .line 22415
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 22251
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 22252
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22254
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22256
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delay_:I

    .line 22258
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skip_:Z

    .line 22260
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipmin_:I

    .line 22262
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipafter_:I

    .line 22264
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 22266
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 22268
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 22270
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 22271
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 22273
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 22275
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22276
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->w_:I

    .line 22278
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->h_:I

    .line 22280
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 22282
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mindur_:I

    .line 22284
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxdur_:I

    .line 22286
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxext_:I

    .line 22288
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->minbitr_:I

    .line 22290
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxbitr_:I

    .line 22292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 22293
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22294
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxseq_:I

    .line 22296
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 22298
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->boxing_:Z

    .line 22300
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 22302
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_0

    .line 22304
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22306
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 22307
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22308
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 22309
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 22311
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22312
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 22314
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 22315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22316
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_2

    .line 22318
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearApi()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 23368
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 23369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBoxing()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24236
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->boxing_:Z

    .line 24237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearClktype()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23136
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 23137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearComp()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 24451
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 24452
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24454
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearComptype()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 24668
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 24669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCtype()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 23534
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 23535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDelay()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22824
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delay_:I

    .line 22825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDelivery()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 24031
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 24032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 24832
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24833
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24836
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24837
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 25087
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 25089
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 25090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25092
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22432
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final clearH()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23674
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->h_:I

    .line 23675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLinear()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24198
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 24199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMaxbitr()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23929
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxbitr_:I

    .line 23930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMaxdur()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23815
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxdur_:I

    .line 23816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMaxext()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23853
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxext_:I

    .line 23854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMaxseq()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24133
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxseq_:I

    .line 24134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMime()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23247
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23248
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 23249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMinbitr()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23891
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->minbitr_:I

    .line 23892
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMindur()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23777
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mindur_:I

    .line 23778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22437
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final clearPlayend()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23071
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 23072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPlaymethod()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23006
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 23007
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPos()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22783
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22784
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPtype()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22718
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22719
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSkip()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22862
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skip_:Z

    .line 22863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSkipafter()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22941
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipafter_:I

    .line 22942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSkipmin()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22903
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipmin_:I

    .line 22904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUnit()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23739
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 23740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearW()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23636
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->w_:I

    .line 23637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 22421
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 23308
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 23298
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 23287
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 23288
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 23391
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23381
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBoxing()Z
    .locals 1

    .line 24212
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->boxing_:Z

    return v0
.end method

.method public final getClktype()Lcom/explorestack/protobuf/adcom/ClickType;
    .locals 1

    .line 23108
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ClickType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ClickType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23109
    sget-object v0, Lcom/explorestack/protobuf/adcom/ClickType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ClickType;

    :cond_0
    return-object v0
.end method

.method public final getClktypeValue()I
    .locals 1

    .line 23085
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    return v0
.end method

.method public final getComp(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1

    .line 24292
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24293
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p1

    .line 24295
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p1
.end method

.method public final getCompBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 1

    .line 24486
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    return-object p1
.end method

.method public final getCompBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;",
            ">;"
        }
    .end annotation

    .line 24554
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCompCount()I
    .locals 1

    .line 24277
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24278
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 24280
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getCompList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation

    .line 24262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24263
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24265
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCompOrBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;
    .locals 1

    .line 24498
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24499
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;

    return-object p1

    .line 24500
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;

    return-object p1
.end method

.method public final getCompOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24513
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24514
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24516
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getComptype(I)Lcom/explorestack/protobuf/adcom/CompanionType;
    .locals 2

    .line 24608
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19500()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CompanionType;

    return-object p1
.end method

.method public final getComptypeCount()I
    .locals 1

    .line 24598
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getComptypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;"
        }
    .end annotation

    .line 24587
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 24588
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19500()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getComptypeValue(I)I
    .locals 1

    .line 24691
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getComptypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24681
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCtype(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 23474
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19300()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p1
.end method

.method public final getCtypeCount()I
    .locals 1

    .line 23464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCtypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 23453
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 23454
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19300()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getCtypeValue(I)I
    .locals 1

    .line 23557
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getCtypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23547
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 22331
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDelay()I
    .locals 1

    .line 22798
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delay_:I

    return v0
.end method

.method public final getDelivery(I)Lcom/explorestack/protobuf/adcom/DeliveryMethod;
    .locals 2

    .line 23971
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19400()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DeliveryMethod;

    return-object p1
.end method

.method public final getDeliveryCount()I
    .locals 1

    .line 23961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDeliveryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
            ">;"
        }
    .end annotation

    .line 23950
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 23951
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19400()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getDeliveryValue(I)I
    .locals 1

    .line 24054
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getDeliveryValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24044
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22326
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 24758
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24759
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 24761
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 24851
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 24852
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 24862
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24863
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 24865
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 24866
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 24938
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24939
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 24941
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 25122
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 25185
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 24924
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24925
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 24927
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

    .line 24910
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24913
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 25133
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25134
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 25135
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

    .line 25147
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25148
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25150
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 23650
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->h_:I

    return v0
.end method

.method public final getLinear()Lcom/explorestack/protobuf/adcom/LinearityMode;
    .locals 1

    .line 24170
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LinearityMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/LinearityMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24171
    sget-object v0, Lcom/explorestack/protobuf/adcom/LinearityMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LinearityMode;

    :cond_0
    return-object v0
.end method

.method public final getLinearValue()I
    .locals 1

    .line 24147
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    return v0
.end method

.method public final getMaxbitr()I
    .locals 1

    .line 23905
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxbitr_:I

    return v0
.end method

.method public final getMaxdur()I
    .locals 1

    .line 23791
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxdur_:I

    return v0
.end method

.method public final getMaxext()I
    .locals 1

    .line 23829
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxext_:I

    return v0
.end method

.method public final getMaxseq()I
    .locals 1

    .line 24109
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxseq_:I

    return v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 23177
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 23188
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 23167
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 23157
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 22215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getMinbitr()I
    .locals 1

    .line 23867
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->minbitr_:I

    return v0
.end method

.method public final getMindur()I
    .locals 1

    .line 23753
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mindur_:I

    return v0
.end method

.method public final getPlayend()Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;
    .locals 1

    .line 23043
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23044
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    :cond_0
    return-object v0
.end method

.method public final getPlayendValue()I
    .locals 1

    .line 23020
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    return v0
.end method

.method public final getPlaymethod()Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 1

    .line 22978
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22979
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    :cond_0
    return-object v0
.end method

.method public final getPlaymethodValue()I
    .locals 1

    .line 22955
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    return v0
.end method

.method public final getPos()Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .locals 1

    .line 22755
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22756
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    :cond_0
    return-object v0
.end method

.method public final getPosValue()I
    .locals 1

    .line 22732
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    return v0
.end method

.method public final getPtype()Lcom/explorestack/protobuf/adcom/VideoPlacementType;
    .locals 1

    .line 22690
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->valueOf(I)Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22691
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    :cond_0
    return-object v0
.end method

.method public final getPtypeValue()I
    .locals 1

    .line 22667
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    return v0
.end method

.method public final getSkip()Z
    .locals 1

    .line 22838
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skip_:Z

    return v0
.end method

.method public final getSkipafter()I
    .locals 1

    .line 22917
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipafter_:I

    return v0
.end method

.method public final getSkipmin()I
    .locals 1

    .line 22877
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipmin_:I

    return v0
.end method

.method public final getUnit()Lcom/explorestack/protobuf/adcom/SizeUnit;
    .locals 1

    .line 23711
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/SizeUnit;->valueOf(I)Lcom/explorestack/protobuf/adcom/SizeUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23712
    sget-object v0, Lcom/explorestack/protobuf/adcom/SizeUnit;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/SizeUnit;

    :cond_0
    return-object v0
.end method

.method public final getUnitValue()I
    .locals 1

    .line 23688
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    return v0
.end method

.method public final getW()I
    .locals 1

    .line 23612
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->w_:I

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 24748
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 22227
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22228
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24810
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24811
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 24813
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 24815
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24817
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_1

    .line 24819
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

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22645
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$19000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 22651
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22647
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22648
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

    .line 22651
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22653
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 22453
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v0, :cond_0

    .line 22454
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1

    .line 22456
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 3

    .line 22462
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 22463
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$15900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 22464
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getPtypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPtypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22466
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 22467
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getPosValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPosValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22469
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    move-result v0

    if-eqz v0, :cond_3

    .line 22470
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setDelay(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22472
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22473
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkip(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22475
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    move-result v0

    if-eqz v0, :cond_5

    .line 22476
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkipmin(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22478
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    move-result v0

    if-eqz v0, :cond_6

    .line 22479
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkipafter(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22481
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16500(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 22482
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getPlaymethodValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPlaymethodValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22484
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 22485
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getPlayendValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPlayendValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22487
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16700(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 22488
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getClktypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setClktypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22490
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16800(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 22491
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22492
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16800(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 22493
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_0

    .line 22495
    :cond_a
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureMimeIsMutable()V

    .line 22496
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16800(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 22498
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 22500
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 22501
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22502
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    .line 22503
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_1

    .line 22505
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 22506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$16900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22508
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 22510
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 22511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22512
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    .line 22513
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_2

    .line 22515
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 22516
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22518
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 22520
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    move-result v0

    if-eqz v0, :cond_10

    .line 22521
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22523
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    move-result v0

    if-eqz v0, :cond_11

    .line 22524
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22526
    :cond_11
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 22527
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getUnitValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setUnitValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22529
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    move-result v0

    if-eqz v0, :cond_13

    .line 22530
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMindur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22532
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    move-result v0

    if-eqz v0, :cond_14

    .line 22533
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxdur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22535
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    move-result v0

    if-eqz v0, :cond_15

    .line 22536
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxext(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22538
    :cond_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    move-result v0

    if-eqz v0, :cond_16

    .line 22539
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMinbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22541
    :cond_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    move-result v0

    if-eqz v0, :cond_17

    .line 22542
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22544
    :cond_17
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 22545
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 22546
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    .line 22547
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_3

    .line 22549
    :cond_18
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 22550
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$17900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22552
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 22554
    :cond_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 22555
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxseq(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22557
    :cond_1a
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18100(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 22558
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getLinearValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setLinearValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22560
    :cond_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22561
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setBoxing(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22563
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 22564
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 22565
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 22566
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 22567
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_4

    .line 22569
    :cond_1d
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 22570
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22572
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_6

    .line 22575
    :cond_1e
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 22576
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 22577
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 22578
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22579
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    .line 22580
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22582
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18700()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 22583
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getCompFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_5

    :cond_1f
    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 22585
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22589
    :cond_21
    :goto_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18400(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 22590
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 22591
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18400(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    .line 22592
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_7

    .line 22594
    :cond_22
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 22595
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18400(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22597
    :goto_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    .line 22599
    :cond_23
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 22600
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22602
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_26

    .line 22603
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 22604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 22605
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22606
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    goto :goto_8

    .line 22608
    :cond_25
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 22609
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22611
    :goto_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_9

    .line 22614
    :cond_26
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 22615
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 22616
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 22617
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22618
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    .line 22619
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->bitField0_:I

    .line 22621
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18800()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 22622
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_27
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_9

    .line 22624
    :cond_28
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22628
    :cond_29
    :goto_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->access$18900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 22629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 25210
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final removeComp(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24467
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24468
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24469
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24472
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 25104
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25105
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 25106
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 25109
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setApi(ILcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23320
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23322
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23323
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApiValue(II)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23402
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureApiIsMutable()V

    .line 23403
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23404
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBoxing(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 24223
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->boxing_:Z

    .line 24224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClktype(Lcom/explorestack/protobuf/adcom/ClickType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23123
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 23124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClktypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23095
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->clktype_:I

    .line 23096
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setComp(ILcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24331
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24332
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24335
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setComp(ILcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24308
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->compBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24310
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24312
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCompIsMutable()V

    .line 24313
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comp_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24316
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setComptype(ILcom/explorestack/protobuf/adcom/CompanionType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24620
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24622
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/CompanionType;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setComptypeValue(II)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24702
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureComptypeIsMutable()V

    .line 24703
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->comptype_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCtype(ILcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23486
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23488
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23489
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCtypeValue(II)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23568
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureCtypeIsMutable()V

    .line 23569
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ctype_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDelay(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22810
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delay_:I

    .line 22811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDelivery(ILcom/explorestack/protobuf/adcom/DeliveryMethod;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23983
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23985
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 23986
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/DeliveryMethod;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeliveryValue(II)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24065
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureDeliveryIsMutable()V

    .line 24066
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->delivery_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24793
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24794
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24797
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24774
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24776
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24779
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24974
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24975
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 24976
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24979
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 24953
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24955
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24957
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureExtProtoIsMutable()V

    .line 24958
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 24961
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22427
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final setH(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23661
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->h_:I

    .line 23662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLinear(Lcom/explorestack/protobuf/adcom/LinearityMode;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 24182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24185
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/LinearityMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 24186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLinearValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 24157
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->linear_:I

    .line 24158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMaxbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23916
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxbitr_:I

    .line 23917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMaxdur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23802
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxdur_:I

    .line 23803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMaxext(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23840
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxext_:I

    .line 23841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMaxseq(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 24120
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->maxseq_:I

    .line 24121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMime(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 23200
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23202
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ensureMimeIsMutable()V

    .line 23203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMinbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23878
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->minbitr_:I

    .line 23879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMindur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23764
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mindur_:I

    .line 23765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlayend(Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23055
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23058
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 23059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlayendValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23030
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playend_:I

    .line 23031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlaymethod(Lcom/explorestack/protobuf/adcom/PlaybackMethod;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22990
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22993
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 22994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlaymethodValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22965
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->playmethod_:I

    .line 22966
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPos(Lcom/explorestack/protobuf/adcom/PlacementPosition;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22767
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22770
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPosValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22742
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->pos_:I

    .line 22743
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPtype(Lcom/explorestack/protobuf/adcom/VideoPlacementType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22702
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22705
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPtypeValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22677
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->ptype_:I

    .line 22678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22443
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final setSkip(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22849
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skip_:Z

    .line 22850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSkipafter(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22928
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipafter_:I

    .line 22929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSkipmin(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 22889
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->skipmin_:I

    .line 22890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23723
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23726
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 23727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnitValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23698
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->unit_:I

    .line 23699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22215
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 25204
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object p1
.end method

.method public final setW(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 0

    .line 23623
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->w_:I

    .line 23624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->onChanged()V

    return-object p0
.end method

.class public final Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private burl_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private deal_:Ljava/lang/Object;

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

.field private id_:Ljava/lang/Object;

.field private item_:Ljava/lang/Object;

.field private lurl_:Ljava/lang/Object;

.field private macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            ">;"
        }
    .end annotation
.end field

.field private mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private media_:Lcom/explorestack/protobuf/Any;

.field private mid_:Ljava/lang/Object;

.field private price_:D

.field private purl_:Ljava/lang/Object;

.field private tactic_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3492
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3801
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3895
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 4030
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4124
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4213
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4307
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4396
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4490
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4620
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4715
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 5369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3493
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3498
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3801
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3895
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 4030
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4124
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4213
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4307
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4396
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4490
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4620
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4715
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 5369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3499
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 3474
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 3474
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 5371
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5372
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 5373
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMacroIsMutable()V
    .locals 2

    .line 4717
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 4718
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 4719
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3480
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 5357
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5358
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5360
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 5361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5363
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5365
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 5668
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5669
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5673
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 5674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5675
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 5677
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5014
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5015
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5019
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5021
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 5023
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMediaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 5204
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5205
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5210
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5212
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3503
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3504
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3505
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;"
        }
    .end annotation

    .line 5547
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5548
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5549
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5551
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5553
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMacro(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;"
        }
    .end annotation

    .line 4893
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4894
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4895
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4899
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5529
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5530
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5531
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5532
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5534
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5490
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5492
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5494
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5495
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5498
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5511
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5512
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5513
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5516
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5469
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5473
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5474
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5477
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5639
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5640
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5639
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5651
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5652
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5651
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addMacro(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4875
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4876
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4877
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4880
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMacro(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4836
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4838
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4841
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4844
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMacro(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4858
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4859
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4862
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMacro(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4815
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4817
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4819
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4820
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4823
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMacroBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;
    .locals 2

    .line 4985
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4986
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object v1

    .line 4985
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;

    return-object v0
.end method

.method public final addMacroBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;
    .locals 2

    .line 4997
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4998
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object v1

    .line 4997
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3657
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 2

    .line 3573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    .line 3574
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3575
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 3

    .line 3582
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 3584
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$1802(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$1902(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    iget-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->price_:D

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2002(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;D)D

    .line 3587
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3588
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2302(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2402(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3591
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2502(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2602(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->exp_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2702(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;I)I

    .line 3594
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2802(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 3596
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3597
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 3598
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 3600
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2902(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 3602
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2902(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;

    .line 3604
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3605
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3002(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_1

    .line 3607
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3002(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 3609
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 3610
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 3612
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 3614
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    .line 3615
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 3616
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3617
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 3619
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 3621
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;

    .line 3623
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 3

    .line 3510
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3511
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3513
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 3515
    iput-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->price_:D

    .line 3517
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 3519
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 3521
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 3523
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 3525
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 3527
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3529
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->exp_:I

    .line 3531
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 3533
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 3535
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    goto :goto_0

    .line 3537
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3539
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3540
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    goto :goto_1

    .line 3542
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 3543
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3545
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 3546
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 3548
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3549
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3551
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 3552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3553
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    goto :goto_3

    .line 3555
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public final clearBurl()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4466
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4467
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4190
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeal()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4100
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExp()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4615
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->exp_:I

    .line 4616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 5310
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5311
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5314
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5315
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5565
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 5567
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 5568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5570
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3640
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3871
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItem()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3965
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3966
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLurl()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4556
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMacro()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4911
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 4913
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 4914
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4916
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearMedia()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 5145
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5146
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5149
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5150
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearMid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4690
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3645
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final clearPrice()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4025
    iput-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->price_:D

    .line 4026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPurl()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4373
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTactic()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4283
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTactic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3629
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBurl()Ljava/lang/String;
    .locals 2

    .line 4406
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4407
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4408
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4410
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4411
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    return-object v0

    .line 4414
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4427
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4428
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4429
    check-cast v0, Ljava/lang/String;

    .line 4430
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4432
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    return-object v0

    .line 4435
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 2

    .line 4133
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4134
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4135
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4137
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4138
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 4141
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4153
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4155
    check-cast v0, Ljava/lang/String;

    .line 4156
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4158
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 4161
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDeal()Ljava/lang/String;
    .locals 2

    .line 4040
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4041
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4042
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4044
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4045
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    return-object v0

    .line 4048
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDealBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4061
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4062
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4063
    check-cast v0, Ljava/lang/String;

    .line 4064
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4066
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    return-object v0

    .line 4069
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 3568
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3563
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExp()I
    .locals 1

    .line 4589
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->exp_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 5236
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5237
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 5239
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 5329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 5330
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 5340
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5341
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 5343
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 5344
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5416
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5417
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 5419
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 5600
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 5663
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 5402
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5403
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 5405
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

    .line 5388
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5389
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5391
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5611
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5612
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 5613
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

    .line 5625
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5626
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5628
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 3811
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3812
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3813
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3815
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3816
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 3819
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3832
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3833
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3834
    check-cast v0, Ljava/lang/String;

    .line 3835
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3837
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 3840
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getItem()Ljava/lang/String;
    .locals 2

    .line 3905
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3906
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3907
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3909
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3910
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    return-object v0

    .line 3913
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getItemBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3926
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3927
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3928
    check-cast v0, Ljava/lang/String;

    .line 3929
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3931
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    return-object v0

    .line 3934
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLurl()Ljava/lang/String;
    .locals 2

    .line 4499
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4500
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4501
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4503
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4504
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    return-object v0

    .line 4507
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4519
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4520
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4521
    check-cast v0, Ljava/lang/String;

    .line 4522
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4524
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    return-object v0

    .line 4527
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMacro(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;
    .locals 1

    .line 4762
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4763
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    return-object p1

    .line 4765
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    return-object p1
.end method

.method public final getMacroBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;
    .locals 1

    .line 4946
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;

    return-object p1
.end method

.method public final getMacroBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;",
            ">;"
        }
    .end annotation

    .line 5009
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMacroCount()I
    .locals 1

    .line 4748
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4749
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4751
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            ">;"
        }
    .end annotation

    .line 4734
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4735
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4737
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMacroOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;
    .locals 1

    .line 4957
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4958
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;

    return-object p1

    .line 4959
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;

    return-object p1
.end method

.method public final getMacroOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4971
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4972
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4974
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMedia()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5055
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5056
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 5058
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public final getMediaBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 5168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 5169
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMediaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final getMediaOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5183
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5184
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 5186
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 5187
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getMid()Ljava/lang/String;
    .locals 2

    .line 4630
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4631
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4632
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4634
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4635
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 4638
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4651
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4652
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4653
    check-cast v0, Ljava/lang/String;

    .line 4654
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4656
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 4659
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 3999
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->price_:D

    return-wide v0
.end method

.method public final getPurl()Ljava/lang/String;
    .locals 2

    .line 4316
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4317
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4318
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4320
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4321
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    return-object v0

    .line 4324
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4336
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4337
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4338
    check-cast v0, Ljava/lang/String;

    .line 4339
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4341
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    return-object v0

    .line 4344
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getTactic()Ljava/lang/String;
    .locals 2

    .line 4223
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4224
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4225
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4227
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4228
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    return-object v0

    .line 4231
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTacticBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4244
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4245
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4246
    check-cast v0, Ljava/lang/String;

    .line 4247
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4249
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    return-object v0

    .line 4252
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 5226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasMedia()Z
    .locals 1

    .line 5041
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

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

    .line 3486
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3487
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5288
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5289
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 5291
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5293
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5295
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_1

    .line 5297
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

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

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

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

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

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

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

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3788
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3794
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3790
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3791
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

    .line 3794
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3796
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3661
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v0, :cond_0

    .line 3662
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1

    .line 3664
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 5

    .line 3670
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3671
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3672
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$1800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3675
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3676
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$1900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3679
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 3680
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setPrice(D)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3682
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3683
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2100(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 3684
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3686
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3687
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 3688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3690
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTactic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3691
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 3692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3694
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3695
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2400(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 3696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3698
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3699
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 3700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3702
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3703
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2600(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 3704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3706
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3707
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setExp(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3709
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3710
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 3711
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    .line 3713
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 3714
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3715
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3716
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 3717
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    goto :goto_0

    .line 3719
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 3720
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3722
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_2

    .line 3725
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3726
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3727
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 3728
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3729
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    .line 3730
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 3732
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3733
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getMacroFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_e
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 3735
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3739
    :cond_10
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3740
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeMedia(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3742
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3743
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3745
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3746
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3747
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3748
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3749
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    goto :goto_3

    .line 3751
    :cond_13
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 3752
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3754
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_4

    .line 3757
    :cond_14
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3758
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3759
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 3760
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3761
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    .line 3762
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->bitField0_:I

    .line 3764
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3400()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3765
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_15
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 3767
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3771
    :cond_17
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 3772
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeMedia(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5119
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5120
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 5122
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 5124
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5126
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_1

    .line 5128
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 5688
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5582
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5583
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5584
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5587
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeMacro(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4928
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4929
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4930
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4931
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4933
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setBurl(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4449
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4452
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4483
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4300(Lcom/explorestack/protobuf/ByteString;)V

    .line 4485
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->burl_:Ljava/lang/Object;

    .line 4486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4000(Lcom/explorestack/protobuf/ByteString;)V

    .line 4208
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->cid_:Ljava/lang/Object;

    .line 4209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeal(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4083
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDealBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4117
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3900(Lcom/explorestack/protobuf/ByteString;)V

    .line 4119
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->deal_:Ljava/lang/Object;

    .line 4120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExp(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4601
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->exp_:I

    .line 4602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5271
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5272
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5273
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5275
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5250
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5254
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5257
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5452
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5453
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5454
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5457
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5431
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5433
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5435
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureExtProtoIsMutable()V

    .line 5436
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5439
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3635
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3854
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3857
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3700(Lcom/explorestack/protobuf/ByteString;)V

    .line 3890
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->id_:Ljava/lang/Object;

    .line 3891
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItem(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3948
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItemBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3980
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3982
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$3800(Lcom/explorestack/protobuf/ByteString;)V

    .line 3984
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->item_:Ljava/lang/Object;

    .line 3985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLurl(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4540
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4543
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4572
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4574
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->lurl_:Ljava/lang/Object;

    .line 4575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMacro(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4798
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4799
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4800
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4803
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMacro(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 4777
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macroBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4779
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4781
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->ensureMacroIsMutable()V

    .line 4782
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 4785
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMedia(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5098
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5099
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5102
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMedia(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 5073
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mediaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5075
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5077
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->media_:Lcom/explorestack/protobuf/Any;

    .line 5078
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    goto :goto_0

    .line 5080
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4673
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4705
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4707
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4500(Lcom/explorestack/protobuf/ByteString;)V

    .line 4709
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mid_:Ljava/lang/Object;

    .line 4710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPrice(D)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4011
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->price_:D

    .line 4012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPurl(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4357
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4360
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4200(Lcom/explorestack/protobuf/ByteString;)V

    .line 4391
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->purl_:Ljava/lang/Object;

    .line 4392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 3651
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final setTactic(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4269
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTacticBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 4298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4300
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->access$4100(Lcom/explorestack/protobuf/ByteString;)V

    .line 4302
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->tactic_:Ljava/lang/Object;

    .line 4303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 0

    .line 5682
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

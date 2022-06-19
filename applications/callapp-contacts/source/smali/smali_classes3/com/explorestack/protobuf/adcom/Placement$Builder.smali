.class public final Lcom/explorestack/protobuf/adcom/Placement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;"
    }
.end annotation


# instance fields
.field private admx_:Z

.field private badv_:Lcom/explorestack/protobuf/LazyStringList;

.field private bapp_:Lcom/explorestack/protobuf/LazyStringList;

.field private battr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private bitField0_:I

.field private cattax_:I

.field private curlx_:Z

.field private displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.field private reward_:Z

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private secure_:Z

.field private ssai_:I

.field private tagid_:Ljava/lang/Object;

.field private videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field private wlang_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26295
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 26643
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26773
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26862
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26989
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 27119
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27184
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27314
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27610
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26296
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 26301
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 26643
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26773
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26862
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26989
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 27119
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27184
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27314
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27610
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26302
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 26277
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 26277
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>()V

    return-void
.end method

.method private ensureBadvIsMutable()V
    .locals 2

    .line 27186
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 27187
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27188
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBappIsMutable()V
    .locals 2

    .line 27316
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 27317
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27318
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 27447
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 27448
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27449
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBcatIsMutable()V
    .locals 2

    .line 26991
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 26992
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26993
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 28334
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 28335
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 28336
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWlangIsMutable()V
    .locals 2

    .line 27612
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 27613
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27614
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26283
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28005
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28006
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28008
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    .line 28009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28011
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 28013
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 28320
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28321
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 28324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28326
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28328
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 28631
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28632
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28636
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 28637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 28638
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 28640
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28167
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28168
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v1

    .line 28171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28173
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28175
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 26306
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$19900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26307
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllBadv(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27276
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 27277
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBapp(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27406
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 27407
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBattr(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27525
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27526
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 27527
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27529
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBattrValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27602
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27603
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

    .line 27604
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27606
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBcat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27081
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 27082
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 28510
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28511
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28512
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28516
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllWlang(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 27702
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 27703
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBadv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27262
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 27263
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBadvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27307
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22600(Lcom/explorestack/protobuf/ByteString;)V

    .line 27308
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 27309
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBapp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27392
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 27393
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27394
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBappBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27435
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27437
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22700(Lcom/explorestack/protobuf/ByteString;)V

    .line 27438
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 27439
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBattr(Lcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27511
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27512
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27513
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBattrValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27588
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBcat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27065
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27067
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 27068
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBcatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27112
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22500(Lcom/explorestack/protobuf/ByteString;)V

    .line 27113
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 27114
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28492
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28493
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28495
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28497
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28453
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28455
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28457
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28461
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28474
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28475
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28476
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28479
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28432
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28436
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28437
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28440
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28602
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28603
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28602
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28614
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28615
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28614
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26484
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final addWlang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27686
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27688
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 27689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final addWlangBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27731
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27733
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22900(Lcom/explorestack/protobuf/ByteString;)V

    .line 27734
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 27735
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 2

    .line 26381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    .line 26382
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 26383
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 2

    .line 26390
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 26392
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20102(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26393
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20202(Lcom/explorestack/protobuf/adcom/Placement;I)I

    .line 26394
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20302(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26395
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20402(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26396
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20502(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 26397
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 26398
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26399
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26401
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26402
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20702(Lcom/explorestack/protobuf/adcom/Placement;I)I

    .line 26403
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 26404
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26405
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26407
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20802(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26408
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 26409
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26410
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26412
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20902(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26413
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 26414
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 26415
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26417
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21002(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    .line 26418
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 26419
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26420
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26422
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21102(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26423
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21202(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 26424
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21302(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 26425
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21402(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 26426
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 26427
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 26429
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 26431
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 26432
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_1

    .line 26434
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 26436
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 26437
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 26439
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 26441
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 26442
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 26443
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26444
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26446
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 26448
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    .line 26450
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 26312
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 26313
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 26315
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 26317
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26319
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26321
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 26323
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26324
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26325
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 26327
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26328
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26329
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26330
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 26332
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26333
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26334
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26335
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 26337
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 26339
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 26341
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26342
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 26344
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 26345
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26347
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 26348
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_1

    .line 26350
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 26351
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26353
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 26354
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 26356
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 26357
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26359
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 26360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26361
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_3

    .line 26363
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public final clearAdmx()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27811
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 27812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBadv()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27290
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27291
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBapp()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27420
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27421
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBattr()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27541
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBcat()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27095
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27096
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCattax()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27179
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCurlx()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27849
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 27850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDisplay()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 27955
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27956
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 27959
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27960
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 28273
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28274
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28277
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28278
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28528
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 28530
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 28531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28533
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26467
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26472
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final clearReward()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 26984
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 26985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdk()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26839
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkver()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26928
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSecure()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27773
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 27774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSsai()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 26768
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 26769
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTagid()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26709
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVideo()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 28117
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28118
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28119
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28121
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28122
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearWlang()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27716
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27717
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26456
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAdmx()Z
    .locals 1

    .line 27787
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    return v0
.end method

.method public final getBadv(I)Ljava/lang/String;
    .locals 1

    .line 27220
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27231
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBadvCount()I
    .locals 1

    .line 27210
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27200
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBapp(I)Ljava/lang/String;
    .locals 1

    .line 27350
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27361
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBappCount()I
    .locals 1

    .line 27340
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBappList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 27481
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p1
.end method

.method public final getBattrCount()I
    .locals 1

    .line 27471
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 27460
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27461
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getBattrValue(I)I
    .locals 1

    .line 27564
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getBattrValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27554
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBcat(I)Ljava/lang/String;
    .locals 1

    .line 27025
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27036
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBcatCount()I
    .locals 1

    .line 27015
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27005
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 27151
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27152
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 27128
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    return v0
.end method

.method public final getCurlx()Z
    .locals 1

    .line 27825
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 26376
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26371
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 27877
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27878
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 27880
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object v0
.end method

.method public final getDisplayBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 1

    .line 27975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27976
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    return-object v0
.end method

.method public final getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    .locals 1

    .line 27987
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27988
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;

    return-object v0

    .line 27990
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_1

    .line 27991
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 28199
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28200
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28202
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 28292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 28293
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 28303
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28304
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 28306
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 28307
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 28379
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 28382
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 28563
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 28626
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 28365
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28366
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 28368
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

    .line 28351
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28352
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28354
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 28574
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28575
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 28576
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

    .line 28588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28589
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28591
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getReward()Z
    .locals 1

    .line 26960
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    return v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 2

    .line 26782
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26783
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26784
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26786
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26787
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 26790
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26803
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26804
    check-cast v0, Ljava/lang/String;

    .line 26805
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26807
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 26810
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkver()Ljava/lang/String;
    .locals 2

    .line 26871
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26872
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26873
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26875
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26876
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 26879
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26891
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26892
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26893
    check-cast v0, Ljava/lang/String;

    .line 26894
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26896
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 26899
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSecure()Z
    .locals 1

    .line 27749
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    return v0
.end method

.method public final getSsai()I
    .locals 1

    .line 26742
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    return v0
.end method

.method public final getTagid()Ljava/lang/String;
    .locals 2

    .line 26652
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26653
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26654
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26656
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26657
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    return-object v0

    .line 26660
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTagidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26673
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26674
    check-cast v0, Ljava/lang/String;

    .line 26675
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26677
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    return-object v0

    .line 26680
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 28039
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28040
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28042
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object v0
.end method

.method public final getVideoBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 28137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 28138
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object v0
.end method

.method public final getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;
    .locals 1

    .line 28149
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28150
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;

    return-object v0

    .line 28152
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v0, :cond_1

    .line 28153
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getWlang(I)Ljava/lang/String;
    .locals 1

    .line 27646
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWlangBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWlangCount()I
    .locals 1

    .line 27636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27626
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getWlangList()Ljava/util/List;
    .locals 1

    .line 26277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final hasDisplay()Z
    .locals 1

    .line 27866
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.method public final hasExt()Z
    .locals 1

    .line 28189
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasVideo()Z
    .locals 1

    .line 28028
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

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

    .line 26289
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26290
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27933
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v0, :cond_0

    .line 27935
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 27937
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27939
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 27941
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28251
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28252
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 28254
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 28256
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28258
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 28260
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

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26630
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 26636
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26632
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Placement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26633
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

    .line 26636
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26638
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26488
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_0

    .line 26489
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1

    .line 26491
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 26497
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 26498
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26499
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20100(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26502
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v0

    if-eqz v0, :cond_2

    .line 26503
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26505
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26506
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20300(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26509
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26510
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20400(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26513
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26514
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setReward(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26516
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26518
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26519
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_0

    .line 26521
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 26522
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26524
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26526
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20700(Lcom/explorestack/protobuf/adcom/Placement;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 26527
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26529
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26530
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26531
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26532
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_1

    .line 26534
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 26535
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26537
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26539
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 26540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26541
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26542
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_2

    .line 26544
    :cond_b
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 26545
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26547
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26549
    :cond_c
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26550
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26551
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 26552
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_3

    .line 26554
    :cond_d
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 26555
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26557
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26559
    :cond_e
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 26560
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 26561
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26562
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_4

    .line 26564
    :cond_f
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 26565
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26567
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 26569
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26570
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26572
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 26573
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setAdmx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26575
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 26576
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setCurlx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26578
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26579
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26581
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26582
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26584
    :cond_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 26585
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26587
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_18

    .line 26588
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 26589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26590
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26591
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_5

    .line 26593
    :cond_17
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 26594
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26596
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_6

    .line 26599
    :cond_18
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 26600
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 26601
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 26602
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 26603
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 26604
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 26606
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$21900()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 26607
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_19
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 26609
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 26613
    :cond_1b
    :goto_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22000(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 26614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28651
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final mergeVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28094
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28095
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v0, :cond_0

    .line 28097
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_0

    .line 28099
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28101
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 28103
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28545
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28546
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28547
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28550
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAdmx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27798
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 27799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBadv(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27243
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27245
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 27246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBapp(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27373
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27375
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 27376
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBattr(ILcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27493
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27495
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27496
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBattrValue(II)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27575
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27576
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBcat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27048
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27050
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 27051
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27052
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27138
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurlx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27836
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 27837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27914
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27915
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 27918
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27892
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27894
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27896
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 27899
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28234
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28235
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28238
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28213
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28215
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28217
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28220
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28415
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28416
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28417
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28420
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28394
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28396
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28398
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 28399
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28402
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26462
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26478
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final setReward(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26971
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 26972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdk(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26823
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26826
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26853
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26855
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22300(Lcom/explorestack/protobuf/ByteString;)V

    .line 26857
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 26858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkver(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26912
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26915
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26942
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26944
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22400(Lcom/explorestack/protobuf/ByteString;)V

    .line 26946
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 26947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27760
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 27761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26754
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 26755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTagid(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26693
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26696
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTagidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 26723
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26725
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22200(Lcom/explorestack/protobuf/ByteString;)V

    .line 26727
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 26728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26277
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28645
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public final setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28076
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28077
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28078
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28080
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28054
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28056
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28058
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 28059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 28061
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setWlang(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27669
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27671
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 27672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

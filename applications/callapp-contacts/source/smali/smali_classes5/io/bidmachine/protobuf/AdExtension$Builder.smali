.class public final Lio/bidmachine/protobuf/AdExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private companionSkipoffset_:I

.field private countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private ignoresSafeAreaLayoutGuide_:Z

.field private loadSkipoffset_:I

.field private preload_:Z

.field private progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private progressDuration_:I

.field private progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private r1_:Z

.field private r2_:Z

.field private skipoffset_:I

.field private storeUrl_:Ljava/lang/Object;

.field private useNativeClose_:Z

.field private viewabilityDurationThreshold_:F

.field private viewabilityIgnoreWindowFocus_:Z

.field private viewabilityPixelThreshold_:F

.field private viewabilityTimeThreshold_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3758
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4843
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 3759
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3764
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4843
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 3765
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 3718
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 3718
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>()V

    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .line 5093
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5094
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 5095
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCloseButtonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4603
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4604
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4606
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 4607
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4608
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4609
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4611
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4450
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4451
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4453
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 4454
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4455
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4456
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4458
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3724
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5390
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5391
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5395
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5396
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5397
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 5399
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4756
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4757
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4759
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 4760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4761
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4762
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4764
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5406
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 5407
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5414
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    .line 5415
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 5416
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 5419
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5420
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 5422
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3769
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$3500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3770
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllEvent(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lio/bidmachine/protobuf/AdExtension$Builder;"
        }
    .end annotation

    .line 5269
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5270
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5271
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5273
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5275
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5251
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5252
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5253
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5256
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5212
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5214
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5216
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5217
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5218
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5220
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5233
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5234
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5235
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5236
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5238
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5191
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5195
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5196
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5199
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 5361
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5362
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 5361
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public final addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 5373
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5374
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 5373
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 3930
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->build()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->build()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/AdExtension;
    .locals 2

    .line 3845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    .line 3846
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3847
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/AdExtension;
    .locals 2

    .line 3854
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 3856
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$3702(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3857
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$3802(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 3858
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$3902(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 3859
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4002(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 3860
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4102(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3861
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4202(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3862
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4302(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3863
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 3864
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 3866
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3868
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 3869
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_1

    .line 3871
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3873
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3874
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_2

    .line 3876
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3878
    :goto_2
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4702(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 3879
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4802(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3880
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$4902(Lio/bidmachine/protobuf/AdExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3881
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5002(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 3882
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5102(Lio/bidmachine/protobuf/AdExtension;F)F

    .line 3883
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5202(Lio/bidmachine/protobuf/AdExtension;F)F

    .line 3884
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5302(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 3885
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 3886
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3887
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 3888
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 3890
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5402(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 3892
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5402(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;

    .line 3894
    :goto_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$5502(Lio/bidmachine/protobuf/AdExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 3895
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension;->access$5500(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 3896
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 3

    .line 3775
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 3776
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 3778
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 3780
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 3782
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 3784
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 3786
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 3788
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 3790
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3791
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 3793
    :cond_0
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3794
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3796
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 3797
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_1

    .line 3799
    :cond_1
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3800
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3802
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3803
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_2

    .line 3805
    :cond_2
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3806
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3808
    :goto_2
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 3810
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    const-string v1, ""

    .line 3812
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 3814
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    const/4 v1, 0x0

    .line 3816
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 3818
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 3820
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 3822
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 3823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 3824
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    goto :goto_3

    .line 3826
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3828
    :goto_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    return-object p0
.end method

.method public final clearCloseButton()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 4556
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4557
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4560
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4561
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearCompanionSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4201
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 4202
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCountdown()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 4403
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4404
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4405
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4407
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4408
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearCustomParams()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5495
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 5496
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearEvent()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5287
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 5289
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 5290
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5292
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 3913
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final clearIgnoresSafeAreaLayoutGuide()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4838
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 4839
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLoadSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4125
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 4126
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 3918
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final clearPreload()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4087
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 4088
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearProgress()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 4709
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4710
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4711
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4713
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4714
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearProgressDuration()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4800
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 4801
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearR1()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4277
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 4278
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearR2()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4303
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 4304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4163
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 4164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStoreUrl()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4909
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 4910
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUseNativeClose()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4239
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 4240
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearViewabilityDurationThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5047
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 5048
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearViewabilityIgnoreWindowFocus()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5085
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 5086
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearViewabilityPixelThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5006
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 5007
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearViewabilityTimeThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4965
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    .line 4966
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 3902
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 5438
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5439
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 4482
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4483
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4485
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public final getCloseButtonBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 4575
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    .line 4576
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCloseButtonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public final getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 4586
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4587
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 4589
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_1

    .line 4590
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getCompanionSkipoffset()I
    .locals 1

    .line 4177
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    return v0
.end method

.method public final getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 4329
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4330
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4332
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public final getCountdownBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 4422
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    .line 4423
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public final getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 4433
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4434
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 4436
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_1

    .line 4437
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5446
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 5426
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getCustomParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5457
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5472
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 5473
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5487
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 5488
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5491
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5489
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;
    .locals 1

    .line 3840
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3835
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 5138
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5139
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 5141
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public final getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 5322
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final getEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 5385
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEventCount()I
    .locals 1

    .line 5124
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5125
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 5127
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 5110
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5111
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5113
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 5333
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5334
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 5335
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public final getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5347
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5348
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5350
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getIgnoresSafeAreaLayoutGuide()Z
    .locals 1

    .line 4814
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public final getLoadSkipoffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4101
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    return v0
.end method

.method public final getMutableCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5520
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPreload()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4063
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    return v0
.end method

.method public final getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 4635
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4636
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4638
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public final getProgressBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 4728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    .line 4729
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public final getProgressDuration()I
    .locals 1

    .line 4776
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    return v0
.end method

.method public final getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 4739
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4740
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 4742
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_1

    .line 4743
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getR1()Z
    .locals 1

    .line 4253
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    return v0
.end method

.method public final getR2()Z
    .locals 1

    .line 4287
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    return v0
.end method

.method public final getSkipoffset()I
    .locals 1

    .line 4139
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    return v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .locals 2

    .line 4852
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 4853
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4854
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4856
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4857
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 4860
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4872
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 4873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4874
    check-cast v0, Ljava/lang/String;

    .line 4875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4877
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 4880
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUseNativeClose()Z
    .locals 1

    .line 4215
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    return v0
.end method

.method public final getViewabilityDurationThreshold()F
    .locals 1

    .line 5021
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    return v0
.end method

.method public final getViewabilityIgnoreWindowFocus()Z
    .locals 1

    .line 5061
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    return v0
.end method

.method public final getViewabilityPixelThreshold()F
    .locals 1

    .line 4980
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    return v0
.end method

.method public final getViewabilityTimeThreshold()I
    .locals 1

    .line 4941
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    return v0
.end method

.method public final hasCloseButton()Z
    .locals 1

    .line 4472
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public final hasCountdown()Z
    .locals 1

    .line 4319
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public final hasProgress()Z
    .locals 1

    .line 4625
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

    .line 3752
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3753
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3732
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 3734
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3743
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 3745
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4534
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4535
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    .line 4537
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 4539
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4541
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_1

    .line 4543
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4381
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4382
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    .line 4384
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 4386
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4388
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_1

    .line 4390
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

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4041
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$5900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4047
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4043
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4044
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

    .line 4047
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 4049
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 3934
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension;

    if-eqz v0, :cond_0

    .line 3935
    check-cast p1, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1

    .line 3937
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 3943
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3944
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3945
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setPreload(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3947
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3948
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setLoadSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3950
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3951
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3953
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3954
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setCompanionSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3956
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3957
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUseNativeClose(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3959
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3960
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setR1(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3962
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3963
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setR2(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3965
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3966
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3968
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3969
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3971
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3972
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3974
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v0

    if-eqz v0, :cond_b

    .line 3975
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setProgressDuration(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3977
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3978
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3980
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3981
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$4900(Lio/bidmachine/protobuf/AdExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 3982
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    .line 3984
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v0

    if-eqz v0, :cond_e

    .line 3985
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityTimeThreshold(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3987
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    .line 3988
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityPixelThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3990
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    .line 3991
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityDurationThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3993
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3994
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityIgnoreWindowFocus(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 3996
    :cond_11
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3997
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3998
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3999
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 4000
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    goto :goto_0

    .line 4002
    :cond_12
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 4003
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4005
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_1

    .line 4008
    :cond_13
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 4009
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4010
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 4011
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4012
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 4013
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 4015
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$5600()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4016
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_14
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 4018
    :cond_15
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4022
    :cond_16
    :goto_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 4023
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5700(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 4022
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 4024
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 4025
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4687
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4688
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    .line 4690
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 4692
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4694
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_1

    .line 4696
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 5561
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdExtension$Builder;"
        }
    .end annotation

    .line 5548
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 5549
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5532
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5533
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5534
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 5535
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5510
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 5511
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeEvent(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5304
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5305
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5306
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5309
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4517
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4518
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4519
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4521
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4496
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4498
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4500
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4501
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4503
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCompanionSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4188
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 4189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4364
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4365
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4366
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4368
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4343
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4347
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4348
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4350
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5174
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5175
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5176
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5177
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5179
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 5153
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5155
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5157
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 5158
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5159
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 5161
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 3908
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4825
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 4826
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLoadSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4112
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 4113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPreload(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4074
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 4075
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4670
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4671
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4672
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4674
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4649
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4651
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4653
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4654
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    goto :goto_0

    .line 4656
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setProgressDuration(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4787
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 4788
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setR1(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4264
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 4265
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setR2(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4294
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 4295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 3924
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final setSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4150
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 4151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStoreUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4893
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4896
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 4897
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStoreUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4923
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4925
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$6000(Lcom/explorestack/protobuf/ByteString;)V

    .line 4927
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 4928
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3718
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 5555
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public final setUseNativeClose(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4226
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 4227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setViewabilityDurationThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 5033
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 5034
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setViewabilityIgnoreWindowFocus(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 5072
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 5073
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setViewabilityPixelThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4992
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 4993
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setViewabilityTimeThreshold(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 0

    .line 4952
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    .line 4953
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->onChanged()V

    return-object p0
.end method

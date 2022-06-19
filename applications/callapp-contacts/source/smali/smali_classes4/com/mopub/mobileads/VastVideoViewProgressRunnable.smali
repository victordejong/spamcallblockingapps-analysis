.class public Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0092\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0092\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoViewProgressRunnable;",
        "Lcom/mopub/mobileads/RepeatingHandlerRunnable;",
        "videoViewController",
        "Lcom/mopub/mobileads/VastVideoViewController;",
        "vastVideoConfig",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        "handler",
        "Landroid/os/Handler;",
        "(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V",
        "doWork",
        "",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final c:Lcom/mopub/mobileads/VastVideoViewController;

.field private final d:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "videoViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->d:Lcom/mopub/mobileads/VastVideoConfig;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    check-cast p1, Ljava/util/List;

    .line 61
    new-instance p3, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    .line 62
    sget-object v0, Lcom/mopub/common/VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/VideoEvent;

    invoke-virtual {v0}, Lcom/mopub/common/VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    .line 61
    invoke-direct {p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    .line 64
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->messageType(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object p3

    .line 60
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p3, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    .line 68
    sget-object v0, Lcom/mopub/common/VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/VideoEvent;

    invoke-virtual {v0}, Lcom/mopub/common/VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 67
    invoke-direct {p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    .line 70
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->messageType(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object p3

    .line 66
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p3, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    .line 74
    sget-object v0, Lcom/mopub/common/VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/VideoEvent;

    invoke-virtual {v0}, Lcom/mopub/common/VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 73
    invoke-direct {p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    .line 76
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->messageType(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object p3

    .line 72
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .line 24
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 26
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->updateProgressBar()V

    if-gtz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->d:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2, v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 90
    check-cast v3, Lcom/mopub/mobileads/VastTracker;

    .line 33
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    .line 34
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;

    move-result-object v6

    sget-object v7, Lcom/mopub/mobileads/VastVideoViewProgressRunnable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastTracker$MessageType;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v5, :cond_3

    const/4 v5, 0x2

    if-ne v6, v5, :cond_2

    .line 39
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mopub/mobileads/VastVideoViewController;->handleViewabilityQuartileEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 36
    :cond_3
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 43
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_5

    move-object v4, v2

    :cond_5
    if-eqz v4, :cond_6

    .line 45
    new-instance v0, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v0, v4}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    .line 46
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    const-string v2, "VastMacroHelper(it)\n    \u2026PlayHead(currentPosition)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 49
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    .line 1085
    iget-object v2, v2, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 44
    invoke-static {v0, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->handleIconDisplay(I)V

    return-void
.end method

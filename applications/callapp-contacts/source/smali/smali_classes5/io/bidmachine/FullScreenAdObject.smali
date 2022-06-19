.class public final Lio/bidmachine/FullScreenAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdObject$b;,
        Lio/bidmachine/FullScreenAdObject$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TAdRequestType;>;>",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedFullscreenAd;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final thresholdTask:Lio/bidmachine/FullScreenAdObject$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/FullScreenAdObject<",
            "TAdRequestType;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/FullScreenAdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedFullscreenAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/unified/UnifiedFullscreenAd;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    .line 16
    new-instance p1, Lio/bidmachine/FullScreenAdObject$1;

    invoke-direct {p1, p0}, Lio/bidmachine/FullScreenAdObject$1;-><init>(Lio/bidmachine/FullScreenAdObject;)V

    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$a;

    return-void
.end method

.method private cancelImpressionThresholdTask()V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$a;

    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdObject$a;->cancel()V

    return-void
.end method

.method private startImpressionThresholdTask()V
    .locals 3

    .line 66
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$a;

    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/models/AdObjectParams;->getViewabilityTimeThresholdMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/FullScreenAdObject$a;->start(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public final createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedFullscreenAdCallback;
    .locals 1

    .line 34
    new-instance v0, Lio/bidmachine/FullScreenAdObject$b;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/FullScreenAdObject$b;-><init>(Lio/bidmachine/FullScreenAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public final onClosed(Z)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lio/bidmachine/AdObjectImpl;->onClosed(Z)V

    .line 56
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public final onFinished()V
    .locals 0

    .line 61
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onFinished()V

    .line 62
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public final onImpression()V
    .locals 0

    .line 49
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onImpression()V

    .line 50
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public final onShown()V
    .locals 0

    .line 43
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onShown()V

    .line 44
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->startImpressionThresholdTask()V

    return-void
.end method

.method public final show(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v1

    check-cast v1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/unified/UnifiedFullscreenAd;->show(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method
